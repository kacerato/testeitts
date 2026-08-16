package com.itsmagic.engine.Engines.Sound.Imported;

import Ic.C2633l;
import com.google.gson.annotations.Expose;
import java.io.File;

public class AudioConfig {

    @Expose
    private boolean trimSilenceFromBeginEnd = true;

    public static File b(File audioFile) {
        File f10 = f(audioFile);
        if (f10 == null) {
            return null;
        }
        return new File(f10.getAbsolutePath() + ".config");
    }

    public static AudioConfig d(File audioFile) {
        File b10 = b(audioFile);
        if (b10 == null) {
            return null;
        }
        try {
            String x10 = X7.a.x(b10);
            if (x10 != null && !x10.isEmpty()) {
                AudioConfig audioConfig = (AudioConfig) X7.a.m().fromJson(x10, AudioConfig.class);
                if (audioConfig != null) {
                    return audioConfig;
                }
            }
        } catch (Exception unused) {
        }
        return new AudioConfig();
    }

    public static AudioConfig e(File audioFile) {
        AudioConfig d10 = d(audioFile);
        if (d10 == null) {
            d10 = new AudioConfig();
        }
        g(audioFile, d10);
        return d10;
    }

    public static File f(File audioFile) {
        if (audioFile != null && audioFile.exists()) {
            if (C2633l.b(audioFile.getName(), ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv") || C2633l.b(audioFile.getName(), ".imvs")) {
                return audioFile;
            }
            if (C2633l.b(audioFile.getName(), ".sound")) {
                String O10 = Tc.b.O(audioFile.getAbsolutePath());
                for (String str : ".mp3|.wav|.ogg|.3gp|.m4a|.aac|.ts|.flac|.gsm|.mid|.xmf|.ota|.imy|.rtx|.mkv".split("\\|")) {
                    if (str != null && !str.isEmpty()) {
                        File file = new File(O10 + str);
                        if (file.exists()) {
                            return file;
                        }
                    }
                }
                for (String str2 : ".imvs".split("\\|")) {
                    if (str2 != null && !str2.isEmpty()) {
                        File file2 = new File(O10 + str2);
                        if (file2.exists()) {
                            return file2;
                        }
                    }
                }
            }
        }
        return null;
    }

    public static boolean g(File audioFile, AudioConfig config) {
        File b10 = b(audioFile);
        if (b10 == null) {
            return false;
        }
        if (config == null) {
            config = new AudioConfig();
        }
        return X7.a.i(b10, config.i());
    }

    public AudioConfig a() {
        AudioConfig audioConfig = new AudioConfig();
        audioConfig.trimSilenceFromBeginEnd = this.trimSilenceFromBeginEnd;
        return audioConfig;
    }

    public boolean c() {
        return this.trimSilenceFromBeginEnd;
    }

    public void h(boolean trimSilenceFromBeginEnd) {
        this.trimSilenceFromBeginEnd = trimSilenceFromBeginEnd;
    }

    public String i() {
        return X7.a.m().toJson(this);
    }
}
