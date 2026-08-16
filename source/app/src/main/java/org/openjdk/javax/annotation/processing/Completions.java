package org.openjdk.javax.annotation.processing;

public class Completions {

    public static class SimpleCompletion implements Completion {
        private String message;
        private String value;

        public SimpleCompletion(String str, String str2) {
            if (str == null || str2 == null) {
                throw new NullPointerException("Null completion strings not accepted.");
            }
            this.value = str;
            this.message = str2;
        }

        @Override
        public String getMessage() {
            return this.message;
        }

        @Override
        public String getValue() {
            return this.value;
        }

        public String toString() {
            return "[\"" + this.value + "\", \"" + this.message + "\"]";
        }
    }

    private Completions() {
    }

    public static Completion of(String str, String str2) {
        return new SimpleCompletion(str, str2);
    }

    public static Completion of(String str) {
        return new SimpleCompletion(str, "");
    }
}
