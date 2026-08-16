package com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base;

import Ac.b;
import N7.c;
import android.content.SharedPreferences;
import androidx.exifinterface.media.ExifInterface;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.InspectorEditor;
import com.itsmagic.engine.Engines.Native.OHString.OHStringSerializer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import n.C14333c;
import org.eclipse.jdt.core.Signature;

public class EditorSettings {

    public static final float f70494a = 1.0f;

    public static final String f70495b = "https://github.com/ITsMagic-Software/Packages-Manifest";

    public static final String f70496c = "release/autogen_database.json.gz";

    public static final String f70497d = "release/autogen_version.txt";

    public static final Object f70498e;

    public static Settings f70499f;

    public static class Settings {

        @Expose
        public float uiScale = 1.0f;

        @Expose
        public a renderBackend = a.Vulkan;

        @Expose
        public boolean drawAxisCube = false;

        @Expose
        public String packagesRepositoryUrl = "";

        @Expose
        public String packagesDatabasePath = "";

        @Expose
        public String packagesVersionPath = "";

        @Expose
        public String githubToken = "";

        @Expose
        public String githubSelectedOrganization = "";

        @Expose
        public List<String> githubOrganizationsCache = new SteppedArrayList();

        @Expose
        public float horizontalSlideSens = 18.0f;

        @Expose
        public float verticalSlideSens = 18.0f;

        @Expose
        public float horizontalMouseSens = 18.0f;

        @Expose
        public float verticalMouseSens = 18.0f;

        @Expose
        public float zoomSens = 50.0f;

        @Expose
        public float mouseZoomSens = 1.0f;

        @Expose
        public float moveSens = 10.0f;

        @Expose
        public float mouseMoveSens = 10.0f;

        @Expose
        public float renderDistanceV2 = 5000.0f;

        @Expose
        public float minimalRenderDistanceV2 = 0.1f;

        @Expose
        public float cameraFov = 60.0f;

        @Expose
        public float cameraResolutionPercentage = 0.7f;

        @Expose
        public Camera.H resolutionMode = Camera.H.FreeAspectResolution;

        @Expose
        public int fixedResolutionPixelsWidth = 1280;

        @Expose
        public int fixedResolutionPixelsHeight = 720;

        @Expose
        public int freeResolutionPixels = 400;

        @Expose
        public boolean maximizeGameViewWhenPlay = true;

        @Expose
        public boolean selectionWireframeGizmo = true;

        @Expose
        public boolean translateThermalFlow = false;

        @Expose
        public boolean translateComponentNames = false;

        @Expose
        public boolean translateNoCodeV2 = true;

        @Expose
        public boolean materialGraphPreviewsEnabled = false;

        @Expose
        public boolean enableFrameLimitOnEditor = true;

        @Expose
        public int limitFramesWhenEditor = 32;

        @Expose
        public int maxTerminalHistory = 999;

        @Expose
        public boolean catchTerminalExceptionsEvenIfClosed = false;

        @Expose
        public boolean recompileWhenFinishTyping = true;

        @Expose
        public boolean allowAutomaticFormatter = true;

        @Expose
        public a codeCompletion = a.Advanced;

        @Expose
        public boolean recompileWhenOpenScript = false;

        public InspectorEditor f70500a = new InspectorEditor();

        public InspectorEditor f70501b = new InspectorEditor();

        public InspectorEditor f70502c = new InspectorEditor();

        public InspectorEditor f70503d = new InspectorEditor();

        public InspectorEditor f70504e = new InspectorEditor();

        public InspectorEditor f70505f = new InspectorEditor();

        @Expose
        public float entryEditorRotS = 18.0f;

        @Expose
        public float entryEditorRotE = 180.0f;

        @Expose
        public String latestProject = null;

        @Expose
        public boolean reopenTheLatestProjectAtStartup = false;

        @Expose
        public boolean enableProfilingToolsV2 = true;

        @Expose
        public boolean vibrateOnSelection = true;

        @Expose
        public boolean focusOnPropertiesAfterObjectSelection = true;

        @Expose
        public b orientation = b.Landscape;

        @Expose
        public boolean projectCheckAtStartup = true;

        @Expose
        public String shortcut_saveProject = "CTRL + S";

        @Expose
        public String shortcut_focusCamera = Signature.SIG_FLOAT;

        @Expose
        public String shortcut_maximizePanel = "M";

        @Expose
        public String shortcut_positionAxis = "Q";

        @Expose
        public String shortcut_rotationAxis = ExifInterface.LONGITUDE_WEST;

        @Expose
        public String shortcut_scaleAxis = "E";

        public enum a {
            Disabled,
            Manual,
            Simple,
            Advanced;

            public boolean b() {
                return ordinal() >= 2;
            }

            public boolean c() {
                return ordinal() >= 1;
            }

            public boolean d() {
                return ordinal() >= 3;
            }

            public boolean e() {
                return ordinal() >= 3;
            }
        }

        public enum b {
            Landscape,
            Portrait,
            Unlock
        }
    }

    public enum a {
        Vulkan,
        Opengl
    }

    static {
        d();
        f70498e = new Object();
    }

    public static Settings a() {
        return f70499f;
    }

    public static Gson b() {
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().serializeSpecialFloatingPointValues().registerTypeAdapter(b.class, new OHStringSerializer()).setPrettyPrinting().create();
    }

    public static void c(Settings s10) {
        s10.uiScale = 1.0f;
        s10.packagesDatabasePath = "";
        s10.githubToken = "";
        s10.githubSelectedOrganization = "";
        s10.githubOrganizationsCache = new SteppedArrayList();
    }

    public static void d() {
        String y10 = X7.a.y(W7.b.f27306f.f2458a.p() + "/editor_settings.config");
        if (y10 != null && !y10.isEmpty()) {
            try {
                f70499f = (Settings) b().fromJson(y10, Settings.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                f70499f = null;
            }
        }
        if (f70499f == null) {
            Settings settings = new Settings();
            f70499f = settings;
            c(settings);
            X7.a.j(W7.b.f27306f.f2458a.p() + "/editor_settings.config", b().toJson(f70499f));
        }
    }

    public static void e() {
        synchronized (f70498e) {
            try {
                if (f70499f != null) {
                    SharedPreferences.Editor edit = c.t().getSharedPreferences("ui_config", 0).edit();
                    edit.putFloat("scale_factor", f70499f.uiScale * C14333c.b());
                    edit.apply();
                    X7.a.j(W7.b.f27306f.f2458a.p() + "/editor_settings.config", b().toJson(f70499f));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
