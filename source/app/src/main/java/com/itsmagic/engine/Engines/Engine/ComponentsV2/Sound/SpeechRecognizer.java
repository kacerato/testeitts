package com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound;

import C5.b;
import JAVARuntime.Runnable;
import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.speech.RecognizerIntent;
import androidx.core.content.ContextCompat;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
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
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import s8.InterfaceC15237a;
import t6.j;

public class SpeechRecognizer extends Component {

    public static final String f76668N = "SpeechRecognizer";

    public static final Class f76669O = SpeechRecognizer.class;

    public final AtomicInteger f76670E;

    public final Object f76671F;

    public android.speech.SpeechRecognizer f76672G;

    public volatile boolean f76673H;

    public String f76674I;

    public String f76675J;

    public String f76676K;

    public String f76677L;

    public JAVARuntime.Component f76678M;

    @Expose
    private volatile boolean enableRecognition;

    @Expose
    private volatile String language;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return SpeechRecognizer.f76669O;
        }

        @Override
        public String c() {
            return SpeechRecognizer.f76668N;
        }

        @Override
        public String e() {
            return Lang.l(Lang.T.SOUND);
        }
    }

    public class b implements Runnable {

        public class a implements PermissionListener {

            public final Context f76680a;

            public class C1255a implements Runnable {
                public C1255a() {
                }

                @Override
                public void run() {
                    t6.e S12 = j.J1() ? j.S1("SpeechRecognizer - permission granted") : null;
                    try {
                        SpeechRecognizer.this.onPermissionGranted();
                    } finally {
                        j.P1(S12);
                    }
                }
            }

            public class C1256b implements SweetAlertDialog.OnSweetClickListener {

                public final SweetAlertDialog f76683a;

                public C1256b(final SweetAlertDialog val$dialog) {
                    this.f76683a = val$dialog;
                }

                @Override
                public void onClick(SweetAlertDialog sweetAlertDialog) {
                    this.f76683a.dismissWithAnimation();
                    SpeechRecognizer.this.askPermission();
                }
            }

            public a(final Context val$context) {
                this.f76680a = val$context;
            }

            @Override
            public void onPermissionDenied(PermissionDeniedResponse response) {
                SpeechRecognizer.this.f76670E.set(1);
                SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.f76680a, 1);
                sweetAlertDialog.setTitleText("Ops!").setContentText("We can't recognize speech").setConfirmText("Try again").setConfirmClickListener(new C1256b(sweetAlertDialog)).show();
            }

            @Override
            public void onPermissionGranted(PermissionGrantedResponse response) {
                K8.a.I(new C1255a());
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

    public class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
            try {
                if (SpeechRecognizer.this.enableRecognition && c8.b.k()) {
                    Context t10 = N7.c.t();
                    SpeechRecognizer speechRecognizer = SpeechRecognizer.this;
                    String sanitizeLanguage = speechRecognizer.sanitizeLanguage(speechRecognizer.language);
                    if (!SpeechRecognizer.this.isLanguageAvailable(sanitizeLanguage)) {
                        SpeechRecognizer.this.reportInvalidLanguage(sanitizeLanguage);
                        SpeechRecognizer.this.enableRecognition = false;
                        SpeechRecognizer.this.f76673H = false;
                        return;
                    } else {
                        if (!android.speech.SpeechRecognizer.isRecognitionAvailable(t10)) {
                            J4.d.E1();
                            J4.d.b2("Failed to start speech recognition, recognition service is not available.");
                            SpeechRecognizer.this.enableRecognition = false;
                            SpeechRecognizer.this.f76673H = false;
                            return;
                        }
                        if (SpeechRecognizer.this.f76672G == null) {
                            SpeechRecognizer.this.f76672G = android.speech.SpeechRecognizer.createSpeechRecognizer(t10);
                            SpeechRecognizer.this.f76672G.setRecognitionListener(new h(SpeechRecognizer.this, null));
                        }
                        SpeechRecognizer.this.f76672G.startListening(SpeechRecognizer.this.createRecognizerIntent(sanitizeLanguage));
                        return;
                    }
                }
                SpeechRecognizer.this.f76673H = false;
            } catch (Exception e10) {
                SpeechRecognizer.this.f76673H = false;
                J4.d.E1();
                J4.d.b2("Failed to start speech recognition: " + e10.getMessage());
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            try {
                if (SpeechRecognizer.this.f76672G != null) {
                    SpeechRecognizer.this.f76672G.cancel();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            try {
                if (SpeechRecognizer.this.f76672G != null) {
                    SpeechRecognizer.this.f76672G.cancel();
                    SpeechRecognizer.this.f76672G.destroy();
                    SpeechRecognizer.this.f76672G = null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class f implements D5.h {
        public f() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpeechRecognizer.this.enableRecognition + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SpeechRecognizer.this.setEnableRecognition(variable.booolean_value.booleanValue());
            }
        }
    }

    public class g implements D5.h {
        public g() {
        }

        @Override
        public Variable get() {
            return new Variable("", SpeechRecognizer.this.language);
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                SpeechRecognizer.this.setLanguage(variable.d());
            }
        }
    }

    public class h implements RecognitionListener {
        public h() {
        }

        @Override
        public void onBeginningOfSpeech() {
        }

        @Override
        public void onBufferReceived(byte[] buffer) {
        }

        @Override
        public void onEndOfSpeech() {
        }

        @Override
        public void onError(int error) {
            SpeechRecognizer.this.f76673H = false;
        }

        @Override
        public void onEvent(int eventType, Bundle params) {
        }

        @Override
        public void onPartialResults(Bundle partialResults) {
            SpeechRecognizer speechRecognizer = SpeechRecognizer.this;
            speechRecognizer.addPendingPartialResult(speechRecognizer.getFirstRecognitionText(partialResults));
        }

        @Override
        public void onReadyForSpeech(Bundle params) {
        }

        @Override
        public void onResults(Bundle results) {
            SpeechRecognizer speechRecognizer = SpeechRecognizer.this;
            speechRecognizer.addPendingResult(speechRecognizer.getFirstRecognitionText(results));
            SpeechRecognizer.this.f76673H = false;
        }

        @Override
        public void onRmsChanged(float rmsdB) {
        }

        public h(SpeechRecognizer speechRecognizer, a aVar) {
            this();
        }
    }

    static {
        C13201a.b(new a());
    }

    public SpeechRecognizer() {
        super(f76668N);
        this.enableRecognition = false;
        this.language = "en-US";
        this.f76670E = new AtomicInteger();
        this.f76671F = new Object();
        this.f76673H = false;
        this.f76674I = "";
        this.f76675J = "";
        this.f76676K = "";
        this.f76677L = "";
    }

    public void addPendingPartialResult(String value) {
        if (value == null || value.isEmpty()) {
            return;
        }
        synchronized (this.f76671F) {
            this.f76674I = appendFrameText(this.f76674I, value);
        }
    }

    public void addPendingResult(String value) {
        if (value == null || value.isEmpty()) {
            return;
        }
        synchronized (this.f76671F) {
            this.f76676K = appendFrameText(this.f76676K, value);
        }
    }

    private String appendFrameText(String current, String value) {
        if (current == null || current.isEmpty()) {
            return value;
        }
        return current + "\n" + value;
    }

    public void askPermission() {
        this.f76670E.set(3);
        N7.c.j0(new b());
    }

    public Intent createRecognizerIntent(String effectiveLanguage) {
        Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, effectiveLanguage);
        intent.putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true);
        return intent;
    }

    private void destroyRecognizer() {
        this.f76673H = false;
        N7.c.j0(new e());
    }

    public String getFirstRecognitionText(Bundle bundle) {
        ArrayList<String> stringArrayList;
        return (bundle == null || (stringArrayList = bundle.getStringArrayList(android.speech.SpeechRecognizer.RESULTS_RECOGNITION)) == null || stringArrayList.isEmpty() || stringArrayList.get(0) == null) ? "" : stringArrayList.get(0);
    }

    public boolean isLanguageAvailable(String value) {
        Locale forLanguageTag;
        String language;
        if (value != null && !value.trim().isEmpty() && (language = (forLanguageTag = Locale.forLanguageTag(value.trim())).getLanguage()) != null && !language.isEmpty()) {
            String languageTag = forLanguageTag.toLanguageTag();
            String country = forLanguageTag.getCountry();
            for (Locale locale : Locale.getAvailableLocales()) {
                if (locale != null && locale.getLanguage() != null && !locale.getLanguage().isEmpty()) {
                    if (languageTag.equalsIgnoreCase(locale.toLanguageTag())) {
                        return true;
                    }
                    if ((country == null || country.isEmpty()) && language.equalsIgnoreCase(locale.getLanguage())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void onPermissionGranted() {
        this.f76670E.set(2);
    }

    public void reportInvalidLanguage(String value) {
        J4.d.E1();
        J4.d.b2("Invalid speech recognition language: " + value);
    }

    public String sanitizeLanguage(String value) {
        return (value == null || value.trim().isEmpty()) ? Locale.getDefault().toLanguageTag() : value.trim();
    }

    private void startListening() {
        this.f76673H = true;
        if (ContextCompat.checkSelfPermission(N7.c.o(), Manifest.permission.RECORD_AUDIO) == 0) {
            N7.c.j0(new c());
        } else {
            this.f76673H = false;
            this.f76670E.set(0);
        }
    }

    private void stopListening() {
        if (this.f76673H) {
            this.f76673H = false;
            N7.c.j0(new d());
        }
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
        linkedList.add(new C5.b(new f(), "Enable recognition", b.a.SLBoolean));
        linkedList.add(new C5.b(new g(), "Language", b.a.SLString));
        if (this.f76670E.get() == 1) {
            linkedList.add(new C5.b(Lang.l(Lang.T.NO_PERMISSION_TO_RECORD_AUDIO_GRANTED), 12));
        }
        return linkedList;
    }

    @InterfaceC15237a
    public String getLanguage() {
        return this.language;
    }

    @InterfaceC15237a
    public String getPartialResults() {
        String str;
        synchronized (this.f76671F) {
            str = this.f76675J;
        }
        return str;
    }

    @InterfaceC15237a
    public String getResults() {
        String str;
        synchronized (this.f76671F) {
            str = this.f76677L;
        }
        return str;
    }

    @Override
    public String getTitle() {
        return f76668N;
    }

    @Override
    public Component.e getType() {
        return Component.e.SpeechRecognizer;
    }

    @Override
    public int iconPriority() {
        return 2;
    }

    @InterfaceC15237a
    public boolean isEnableRecognition() {
        return this.enableRecognition;
    }

    @Override
    public void onDetach() {
        destroyRecognizer();
        synchronized (this.f76671F) {
            this.f76674I = "";
            this.f76675J = "";
            this.f76676K = "";
            this.f76677L = "";
        }
        super.onDetach();
    }

    @Override
    public void parallelUpdate() {
        super.parallelUpdate();
        synchronized (this.f76671F) {
            this.f76675J = this.f76674I;
            this.f76674I = "";
            this.f76677L = this.f76676K;
            this.f76676K = "";
        }
        if (!c8.b.k()) {
            stopListening();
            return;
        }
        if (this.f76670E.get() == 0 && this.enableRecognition) {
            askPermission();
        }
        if (this.f76670E.get() == 2) {
            if (!this.enableRecognition) {
                stopListening();
            } else {
                if (this.f76673H) {
                    return;
                }
                startListening();
            }
        }
    }

    @InterfaceC15237a
    public void setEnableRecognition(boolean enableRecognition) {
        this.enableRecognition = enableRecognition;
        if (enableRecognition) {
            return;
        }
        stopListening();
    }

    @InterfaceC15237a
    public void setLanguage(String language) {
        this.language = sanitizeLanguage(language);
        if (this.f76673H) {
            stopListening();
        }
    }

    @Override
    public void setRuntime(JAVARuntime.Component run) {
        this.f76678M = run;
    }

    @Override
    public JAVARuntime.Component toJAVARuntime() {
        JAVARuntime.Component component = this.f76678M;
        if (component != null) {
            return component;
        }
        JAVARuntime.SpeechRecognizer speechRecognizer = new JAVARuntime.SpeechRecognizer(this);
        this.f76678M = speechRecognizer;
        return speechRecognizer;
    }

    @Override
    public Component mo1248clone() {
        SpeechRecognizer speechRecognizer = new SpeechRecognizer();
        speechRecognizer.enableRecognition = this.enableRecognition;
        speechRecognizer.language = this.language;
        return speechRecognizer;
    }
}
