package android.service.autofill;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.List;

public final class FieldClassification {
    FieldClassification(@RecentlyNonNull ArrayList<Match> matches) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public List<Match> getMatches() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static final class Match {
        Match(String categoryId, float score) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public String getCategoryId() {
            throw new RuntimeException("Stub!");
        }

        public float getScore() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }
}
