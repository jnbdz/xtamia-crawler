const channelRegex = /(?:https|http):\/\/(?:[\w]+\.)?youtube\.com\/(?:c\/|channel\/|user\/)([a-zA-Z0-9-]{1,})/;

/**
 * XTamia Crawler Youtube Utils Class
 */
class Utils {

    /**
     * Verify it is a Youtube video.
     * @param {*} url 
     * @returns 
     */
    static isYouTubeChannel(url) {
        return channelRegex.test(url);
    }

    /**
     * Generate Playlist Metadata
     * @param {*} query 
     * @returns Array
     */
    static generatePlaylistMetadata(query) {
        const indexes = [];
        if(query.entries == null || query.entries.length === 0) {
            console.error("Cannot extract URLS, no entries in data.")
            return indexes;
        }
        for(const entry of query.entries) {
            let url;
            if (entry.url == null) url = entry.webpage_url;
            else url = (entry.ie_key != null && entry.ie_key === "Youtube") ? "https://youtube.com/watch?v=" + entry.url : entry.url;
            if(url != null && url.length > 0) {
                let playlist = "?";
                if(query.title != null) {
                    playlist = query.title;
                } else if(query.id != null) {
                    playlist = query.id;
                }
                indexes.push({
                    video_url: url,
                    playlist_url: query.webpage_url,
                    playlist_index: query.entries.indexOf(entry),
                    playlist_id: query.id,
                    playlist_title: query.title,
                    playlist: playlist,
                    playlist_uploader: query.uploader,
                    playlist_uploader_id: query.uploader_id
                })
            }
        }
        return indexes;
    }

}