package com.itsmagic.engine.Utils.Media;

public final class YoutubeUtils {

    public static class InvalidYoutubeLinkException extends RuntimeException {
        public InvalidYoutubeLinkException(String message) {
            super(message);
        }
    }

    public static String a(String url) {
        if (url == null) {
            throw new InvalidYoutubeLinkException("Invalid youtube link: null");
        }
        if (url.contains("www.youtube.com") || url.contains("youtube.com")) {
            if (!url.contains("watch?v=")) {
                throw new InvalidYoutubeLinkException("Invalid youtube link: " + url);
            }
            String substring = url.substring(url.indexOf("watch?v=") + 8);
            int indexOf = substring.indexOf(38);
            if (indexOf >= 0) {
                substring = substring.substring(0, indexOf);
            }
            int indexOf2 = substring.indexOf(63);
            return indexOf2 >= 0 ? substring.substring(0, indexOf2) : substring;
        }
        if (!url.contains("youtu.be/")) {
            throw new InvalidYoutubeLinkException("Invalid youtube link: " + url);
        }
        String substring2 = url.substring(url.indexOf("youtu.be/") + 9);
        int indexOf3 = substring2.indexOf(38);
        if (indexOf3 >= 0) {
            substring2 = substring2.substring(0, indexOf3);
        }
        int indexOf4 = substring2.indexOf(63);
        return indexOf4 >= 0 ? substring2.substring(0, indexOf4) : substring2;
    }
}
