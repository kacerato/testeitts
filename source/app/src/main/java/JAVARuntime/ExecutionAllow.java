package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ExecutionAllow.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ExecutionAllow.class
  classes.dex
 */
public class ExecutionAllow {
    private transient boolean onGameStopped;
    private transient boolean onGameRunning;

    public ExecutionAllow(boolean z10, boolean z11) {
        this.onGameStopped = z10;
        this.onGameRunning = z11;
    }

    public boolean onGameStopped() {
        return this.onGameStopped;
    }

    public void setOnGameStopped(boolean z10) {
        this.onGameStopped = z10;
    }

    public boolean onGameRunning() {
        return this.onGameRunning;
    }

    public void setOnGameRunning(boolean z10) {
        this.onGameRunning = z10;
    }
}
