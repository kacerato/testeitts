package com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound;

import C5.b;
import D5.h;
import J4.d;
import JAVARuntime.Runnable;
import android.Manifest;
import android.content.Context;
import android.media.AudioRecord;
import androidx.core.content.ContextCompat;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.MicrophoneReader;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import com.itsmagic.engine.Engines.Sound.Native.NativeSoundEmitter;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import com.karumi.dexter.Dexter;
import com.karumi.dexter.PermissionToken;
import com.karumi.dexter.listener.PermissionDeniedResponse;
import com.karumi.dexter.listener.PermissionGrantedResponse;
import com.karumi.dexter.listener.PermissionRequest;
import com.karumi.dexter.listener.single.PermissionListener;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import s8.InterfaceC15237a;
import t6.e;
import t6.j;

public class MicrophoneReader extends Component {

    public static final String f76593O = "MicrophoneReader";

    public static final Class f76594P = MicrophoneReader.class;

    public static final int f76595Q = 16;

    public static final int f76596R = 2;

    public AudioRecord f76597E;

    public boolean f76598F;

    public final AtomicInteger f76599G;

    public final AtomicBoolean f76600H;

    public final Object f76601I;

    public NativeShortBuffer f76602J;

    public int f76603K;

    public NativeShortBuffer f76604L;

    public int f76605M;

    public JAVARuntime.Component f76606N;

    @Expose
    private boolean enableRecord;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return MicrophoneReader.f76594P;
        }

        @Override
        public String c() {
            return MicrophoneReader.f76593O;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SOUND);
        }
    }

    public class b implements Runnable {

        public class a implements PermissionListener {

            public final Context f76608a;

            public class C1253a implements Runnable {
                public C1253a() {
                }

                @Override
                public void run() {
                    e S12 = j.J1() ? j.S1("MicrophoneReader - permission granted") : null;
                    try {
                        MicrophoneReader.this.onPermissionGranted();
                    } finally {
                        j.P1(S12);
                    }
                }
            }

            public class C1254b implements SweetAlertDialog.OnSweetClickListener {

                public final SweetAlertDialog f76611a;

                public C1254b(final SweetAlertDialog val$dialog) {
                    this.f76611a = val$dialog;
                }

                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    this.f76611a.dismissWithAnimation();
                    MicrophoneReader.this.askPermission();
                }
            }

            public a(final Context val$context) {
                this.f76608a = val$context;
            }

            @Override
            public void onPermissionDenied(PermissionDeniedResponse response) {
                MicrophoneReader.this.f76599G.set(1);
                SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.f76608a, 1);
                sweetAlertDialog.setTitleText("Ops!").setContentText("We can't capture audio").setConfirmText("Try again").setConfirmClickListener(new C1254b(sweetAlertDialog)).show();
            }

            @Override
            public void onPermissionGranted(PermissionGrantedResponse response) {
                K8.a.I(new C1253a());
            }

            @Override
            public void onPermissionRationaleShouldBeShown(PermissionRequest permission, PermissionToken token) {
                token.continuePermissionRequest();
            }
        }

        public b() {
        }

        @Override
        public void run() {
            Context t10 = N7.c.t();
            Dexter.withContext(t10).withPermission(Manifest.permission.RECORD_AUDIO).withListener(new a(t10)).check();
        }
    }

    public class c implements h {
        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", MicrophoneReader.this.enableRecord + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                MicrophoneReader.this.enableRecord = variable.booolean_value.booleanValue();
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public MicrophoneReader() {
        super(f76593O);
        this.enableRecord = false;
        this.f76598F = false;
        this.f76599G = new AtomicInteger();
        this.f76600H = new AtomicBoolean();
        this.f76601I = new Object();
        this.f76603K = 0;
        this.f76605M = 0;
    }

    public void askPermission() {
        this.f76599G.set(3);
        N7.c.j0(new b());
    }

    private void ensureBufferCapacity(int minCapacity) {
        if (minCapacity <= 0) {
            return;
        }
        NativeShortBuffer nativeShortBuffer = this.f76602J;
        if (nativeShortBuffer == null || nativeShortBuffer.getCapacity() < minCapacity) {
            NativeShortBuffer nativeShortBuffer2 = new NativeShortBuffer(minCapacity);
            NativeShortBuffer nativeShortBuffer3 = this.f76602J;
            if (nativeShortBuffer3 != null) {
                int i10 = this.f76603K;
                if (i10 > 0) {
                    nativeShortBuffer2.set(0, nativeShortBuffer3, 0, i10);
                }
                this.f76602J.destroyImmediate();
            }
            this.f76602J = nativeShortBuffer2;
        }
    }

    private void ensureFrameCapacity(int minCapacity) {
        if (minCapacity <= 0) {
            return;
        }
        NativeShortBuffer nativeShortBuffer = this.f76604L;
        if (nativeShortBuffer == null || nativeShortBuffer.getCapacity() < minCapacity) {
            NativeShortBuffer nativeShortBuffer2 = this.f76604L;
            if (nativeShortBuffer2 != null) {
                nativeShortBuffer2.destroyImmediate();
            }
            this.f76604L = new NativeShortBuffer(minCapacity);
        }
    }

    private void internalStartRecording() {
        if (ContextCompat.checkSelfPermission(N7.c.o(), Manifest.permission.RECORD_AUDIO) != 0) {
            return;
        }
        final int minBufferSize = AudioRecord.getMinBufferSize(NativeSoundEmitter.D(), 16, 2);
        AudioRecord audioRecord = new AudioRecord(1, NativeSoundEmitter.D(), 16, 2, minBufferSize);
        this.f76597E = audioRecord;
        if (audioRecord.getState() != 1) {
            d.E1();
            d.M1("Failed to start recording microphone audio, maybe device doesn't have any microphone?");
            return;
        }
        this.f76597E.startRecording();
        this.f76598F = true;
        this.f76600H.set(false);
        Thread thread = new Thread(new Runnable() {
            @Override
            public final void run() {
                MicrophoneReader.this.lambda$internalStartRecording$0(minBufferSize);
            }
        });
        thread.setPriority(1);
        thread.setName("Microphone recorder");
        thread.start();
    }

    public void lambda$internalStartRecording$0(int i10) {
        AudioRecord audioRecord;
        short[] sArr = new short[i10];
        while (this.f76598F && !this.f76600H.get()) {
            int read = this.f76597E.read(sArr, 0, i10);
            if (read > 0) {
                if (this.f76600H.get()) {
                    break;
                }
                if (c8.b.k()) {
                    synchronized (this.f76601I) {
                        ensureBufferCapacity(this.f76603K + read);
                        this.f76602J.set(this.f76603K, sArr, 0, read);
                        this.f76603K += read;
                    }
                } else {
                    continue;
                }
            }
        }
        if (this.f76600H.get() && (audioRecord = this.f76597E) != null) {
            audioRecord.stop();
            this.f76597E.release();
            this.f76597E = null;
        }
        this.f76598F = false;
    }

    public void onPermissionGranted() {
        this.f76599G.set(2);
    }

    private void stopRecording() {
        this.f76600H.set(true);
    }

    @InterfaceC15237a
    public int getFrameLength() {
        return this.f76605M;
    }

    @InterfaceC15237a
    public NativeShortBuffer getFramePCM() {
        return this.f76604L;
    }

    @InterfaceC15237a
    public short[] getFramePCMArray() {
        int i10 = this.f76605M;
        if (i10 <= 0) {
            return new short[0];
        }
        short[] sArr = new short[i10];
        NativeShortBuffer nativeShortBuffer = this.f76604L;
        if (nativeShortBuffer != null) {
            nativeShortBuffer.get(0, sArr, 0, i10);
        }
        return sArr;
    }

    @Override
    public int getIconResource() {
        return R.drawable.microphone;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new c(), "Enable record", b.a.SLBoolean));
        if (this.f76599G.get() == 1) {
            linkedList.add(new C5.b(Lang.l(Lang.T.NO_PERMISSION_TO_RECORD_AUDIO_GRANTED), 12));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public int getSampleRate() {
        return NativeSoundEmitter.D();
    }

    @Override
    public String getTitle() {
        return f76593O;
    }

    @Override
    public Component.e getType() {
        return Component.e.MicrophoneReader;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isEnableRecord() {
        return this.enableRecord;
    }

    @Override
    public void onDetach() {
        stopRecording();
        synchronized (this.f76601I) {
            try {
                NativeShortBuffer nativeShortBuffer = this.f76602J;
                if (nativeShortBuffer != null) {
                    nativeShortBuffer.destroyImmediate();
                    this.f76602J = null;
                }
                NativeShortBuffer nativeShortBuffer2 = this.f76604L;
                if (nativeShortBuffer2 != null) {
                    nativeShortBuffer2.destroyImmediate();
                    this.f76604L = null;
                }
                this.f76603K = 0;
                this.f76605M = 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        super.onDetach();
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        if (c8.b.k()) {
            if (this.f76599G.get() == 0 && this.enableRecord) {
                askPermission();
            }
            if (this.f76599G.get() == 2) {
                if (!this.enableRecord) {
                    if (this.f76598F) {
                        stopRecording();
                    }
                } else {
                    if (!this.f76598F) {
                        internalStartRecording();
                        return;
                    }
                    synchronized (this.f76601I) {
                        try {
                            int i10 = this.f76603K;
                            if (i10 > 0) {
                                ensureFrameCapacity(i10);
                                this.f76604L.set(0, this.f76602J, 0, this.f76603K);
                            }
                            this.f76605M = this.f76603K;
                            this.f76603K = 0;
                        } finally {
                        }
                    }
                }
            }
        }
    }

    @InterfaceC15237a
    public void setEnableRecord(boolean enableRecord) {
        this.enableRecord = enableRecord;
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76606N = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76606N;
        if (component != null) {
            return component;
        }
        JAVARuntime.MicrophoneReader microphoneReader = new JAVARuntime.MicrophoneReader(this);
        this.f76606N = microphoneReader;
        return microphoneReader;
    }

    @Override
    public Component mo1248clone() {
        MicrophoneReader microphoneReader = new MicrophoneReader();
        microphoneReader.enableRecord = this.enableRecord;
        return microphoneReader;
    }
}
