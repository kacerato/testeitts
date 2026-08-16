package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:MicrophoneReader.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:MicrophoneReader.class
  classes.dex
 */
@ClassCategory(cat = {"Sound"})
public class MicrophoneReader extends Component {
    @HideGetSet
    public NativeShortBuffer getFramePCM() {
        return null;
    }

    @HideGetSet
    public short[] getFramePCMArray() {
        return null;
    }

    @HideGetSet
    public int getFrameLength() {
        return 0;
    }

    @HideGetSet
    public int getSampleRate() {
        return 0;
    }

    @HideGetSet
    public boolean isEnableRecord() {
        return false;
    }

    @HideGetSet
    public void setEnableRecord(boolean z10) {
    }
}
