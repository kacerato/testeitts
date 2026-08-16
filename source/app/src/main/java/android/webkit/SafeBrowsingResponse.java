package android.webkit;

public abstract class SafeBrowsingResponse {
    public abstract void showInterstitial(boolean z10);

    public abstract void proceed(boolean z10);

    public abstract void backToSafety(boolean z10);

    public SafeBrowsingResponse() {
        throw new RuntimeException("Stub!");
    }
}
