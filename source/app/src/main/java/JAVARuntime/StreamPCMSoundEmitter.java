package JAVARuntime;

import Fc.e;
import d8.m;
import o8.InterfaceC14490d;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:StreamPCMSoundEmitter.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:StreamPCMSoundEmitter.class
  classes.dex
 */
@ClassCategory(cat = {"Sound"})
public class StreamPCMSoundEmitter {

    public class AnonymousClass1 implements e.a {
        final Callback val$callback;

        public AnonymousClass1(final Callback val$callback) {
            this.val$callback = val$callback;
        }

        @Override
        public e.b fillAudio(com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer audio, final int playedSamples, final float seconds) {
            final NativeShortBuffer jAVARuntime = audio.toJAVARuntime();
            final State[] stateArr = {State.STOPPED};
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    State fillAudio = AnonymousClass1.this.val$callback.fillAudio(jAVARuntime, playedSamples, seconds);
                    State[] stateArr2 = stateArr;
                    if (fillAudio == null) {
                        fillAudio = State.STOPPED;
                    }
                    stateArr2[0] = fillAudio;
                }
            });
            return StreamPCMSoundEmitter.access$000(stateArr[0]);
        }
    }

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$itsmagic$engine$Engines$Sound$Adapters$StreamPCMSoundEmitter$State;

        static {
            int[] iArr = new int[e.b.values().length];
            $SwitchMap$com$itsmagic$engine$Engines$Sound$Adapters$StreamPCMSoundEmitter$State = iArr;
            try {
                iArr[e.b.PLAYING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itsmagic$engine$Engines$Sound$Adapters$StreamPCMSoundEmitter$State[e.b.PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itsmagic$engine$Engines$Sound$Adapters$StreamPCMSoundEmitter$State[e.b.STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:StreamPCMSoundEmitter$Callback.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:StreamPCMSoundEmitter$Callback.class
  classes.dex
 */
    public interface Callback {
        State fillAudio(NativeShortBuffer nativeShortBuffer, int i10, float f10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:StreamPCMSoundEmitter$State.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:StreamPCMSoundEmitter$State.class
  classes.dex
 */
    public enum State {
        PLAYING,
        PAUSED,
        STOPPED;

        public static State[] valuesCustom() {
            State[] valuesCustom = values();
            int length = valuesCustom.length;
            State[] stateArr = new State[length];
            java.lang.System.arraycopy(valuesCustom, 0, stateArr, 0, length);
            return stateArr;
        }
    }

    public StreamPCMSoundEmitter(Callback callback) {
    }

    @HideGetSet
    public int getSampleRate() {
        return 0;
    }

    @HideGetSet
    public float getLeftVolume() {
        return 0.0f;
    }

    @HideGetSet
    public void setLeftVolume(float f10) {
    }

    @HideGetSet
    public float getRightVolume() {
        return 0.0f;
    }

    @HideGetSet
    public void setRightVolume(float f10) {
    }

    public void setVolumes(float f10, float f11) {
    }

    public void setVolumes(float f10, float f11, float f12) {
    }

    @HideGetSet
    public float getSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setSpeed(float f10) {
    }

    @HideGetSet
    public float getPitch() {
        return 0.0f;
    }

    @HideGetSet
    public void setPitch(float f10) {
    }

    @HideGetSet
    public float getVolume() {
        return 0.0f;
    }

    @HideGetSet
    public void setVolume(float f10) {
    }

    public float getCurrentSecond() {
        return 0.0f;
    }

    public float getTotalSeconds() {
        return 0.0f;
    }

    public void seekToSecond(float f10) {
    }

    public void seekTo(int i10) {
    }

    @HideGetSet
    public boolean isLoop() {
        return false;
    }

    @HideGetSet
    public void setLoop(boolean z10) {
    }

    @HideGetSet
    public State getCallbackState() {
        return State.STOPPED;
    }

    public void play() {
    }

    public void pause() {
    }

    public void stop() {
    }

    public void destroy() {
    }

    @HideGetSet
    public boolean isPaused() {
        return false;
    }

    @HideGetSet
    public boolean isPlaying() {
        return false;
    }

    @HideGetSet
    public boolean isStopped() {
        return false;
    }
}
