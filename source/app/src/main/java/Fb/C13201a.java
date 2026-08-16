package fb;

import android.util.Log;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Activities.Editor.Extensions.Area.AreaEditorComponent;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AIs.EnemyAI;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AStar.AStarPathFinder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AStar.AStarWaypoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AStar.AStarWaypointConnection;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.AnimatedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.AnimatedModel.BakedArmature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.Trigger.AnimationTrigger;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ComponentUtils.BakeChildSuppressor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.GizmoRenderers.CubeGizmoRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.IgnoreSave.IgnoreSave;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.GamePadAxisMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.GamePadMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.KeyboardAxisMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.KeyboardMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.MouseAxisMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.MouseMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.JavaComponent.JavaComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD.LOD;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD.LODTarget;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.DayNightCycle;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.ObjectLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LuaComponent.LuaComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.EmbeddedMatMR;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Modifiers.Array;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.NavMesh.BakedNavMesh;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.CurvePath;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.MeshCurve;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.PathPoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.PointConnector;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PathFinder.PathFinder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.AreaTrigger;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Characterbody;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Rigidbody;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.VehiclePhysics;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint.ConstraintHitch;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint.ConstraintPivot;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint.HingeConstraint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint.PointConstraint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.AmbientLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.AtmosphericScattering;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Bloom;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Brightness;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CavityRidgeValley;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ChromaticAberration;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ContactShadows;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Contrast;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ContrastBrightnessSaturation;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomAmbientLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomPostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.DPCFShadow;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.DepthOfField;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.FastBloom;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.FilmGrainScratch;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Fog;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GaussianBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchBlockDistortionColorShift;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchBrokenPixelDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchChaoticSmoothBlend;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchCircleBlockDamage;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchDistortionBars;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchHorizontalSliceDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchImageBlockDamage;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchJitter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchLineBlockDamage;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchLineDisplacement;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchOrganicNoiseDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchPeriodicDisturbance;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchPixelDifferenceCompare;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchPixelatedRgbInterlace;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchRandomDistortionFeed;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchRandomRgbShift;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchRetroCorruptedScreen;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchSineChannelDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchSmoothColorShiftMask;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchSwirlFragments;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Glitch.DigitalGlitchVoronoiDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GodRaysLightShafts;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GradientLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GradientSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Halftone;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.LensDirt;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.LensDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.MotionBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.NightVision;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.OrderedDither;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Outline;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PCSSShadow;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Pixelate;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PostVignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Posterize;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PrecomputedAtmosphereSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PrecomputedAtmosphereSkybox2;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ProcessingGraph;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.SSAO;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Saturation;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Sharpen;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Skybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ToneMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.VHSFilter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.VSMShadow;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Vignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Manager.RenderEffectArea;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIBackgroundBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIBloom;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIChromaticAberration;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIContrastBrightnessSaturation;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UICustomPostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIFadeOut;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIGaussianBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UILensDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIOutline;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIPostTransform;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIPostVignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIProcessingGraph;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UISharpen;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIVHSFilter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.Billboard;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.OrbitalCameraFollow;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.RenderTextureExtractor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.ScaleBasedDistance;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.SlideRotate;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.SmoothCameraFollow;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.StandUp;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.TimedObjectDeactivator;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.TimedObjectDestructor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.Route;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.RouteFollower;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.Armature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.MicrophoneReader;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundListener;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SpeechRecognizer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SpriteRenderer.SpriteRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents.BoundingTerrainLevel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents.BoxTerrainLevel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents.ModelTerrainLevel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.Road;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.RoadPoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.StickToTerrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.TrailSystem.TrailRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Utils.HideObjectFromPanel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.CustomVFXEffect;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.HoleProjector;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Vehicle.VehicleWheel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VideoPlayer.VideoPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunkSpawner;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.PlayerSystem.VoxelHand;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.TerrainSystem.VoxelGenerator;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Wind.WindEffect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UI3DCameraAimInputSystem;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UI3DInputSystem;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIController;
import com.itsmagic.engine.Engines.Engine.ImGUI.Controller.UIRect;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIFlexLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIGridLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIHorizontalLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIVerticalLayout;
import com.itsmagic.engine.Engines.Engine.ImGUI.Layouts.UIWeight;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIAlignment;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIAnchor;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIAspectRatio;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIAxisEventListener;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIBarHandler;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIButton;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UICheckBox;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIDrivingWheel;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIDynamicJoystick;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIFitParent;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIHorizontalScrollView;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIHoverButton;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIImage;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIInputText;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIJoystick;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIKeyEventListener;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIPinchDetector;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIProgressBar;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRadioButton;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRadioGroup;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRectangularMask;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRotateImage;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIShape;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISlideArea;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISlideBar;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISpriteRenderer;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITextView;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIVerticalScrollView;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIWebView;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeExecutor;
import com.itsmagic.engine.Engines.Engine.NoCode.Components.NoCodeFileExecutor;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary.ComponentDeserializeException;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import k.C13906a;
import org.eclipse.jdt.internal.core.JavadocConstants;
import s8.InterfaceC15238b;
import s8.f;

public class C13201a {

    public static final List<InterfaceC13202b> f86154a = new SteppedArrayList();

    public class RunnableC1603a implements Runnable {
        @Override
        public void run() {
            C13201a.h();
        }
    }

    static {
        new Thread(new RunnableC1603a()).start();
    }

    public static void b(InterfaceC13202b componentInterface) {
        if (componentInterface == null) {
            throw new NullPointerException("component interface can't be null");
        }
        Class b10 = componentInterface.b();
        if (b10 == null) {
            throw new RuntimeException("Component class type can't be null");
        }
        if (b10 == Component.class) {
            throw new RuntimeException("Component class type can't be == Component.class");
        }
        if (!Component.class.isAssignableFrom(b10)) {
            throw new RuntimeException("Component class type needs to extends Component.class");
        }
        String c10 = componentInterface.c();
        if (c10 == null || c10.isEmpty()) {
            throw new NullPointerException("Component serialized name can't be null or empty");
        }
        synchronized (f86154a) {
            int i10 = 0;
            while (true) {
                try {
                    List<InterfaceC13202b> list = f86154a;
                    if (i10 >= list.size()) {
                        list.add(componentInterface);
                    } else {
                        if (list.get(i10).c().equalsIgnoreCase(c10)) {
                            throw new RuntimeException("Serialized name already used by other component!!");
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static InterfaceC13202b c(int i10) {
        InterfaceC13202b interfaceC13202b;
        List<InterfaceC13202b> list = f86154a;
        synchronized (list) {
            interfaceC13202b = list.get(i10);
        }
        return interfaceC13202b;
    }

    public static int d() {
        int size;
        List<InterfaceC13202b> list = f86154a;
        synchronized (list) {
            size = list.size();
        }
        return size;
    }

    public static Component e(JsonObject json) {
        try {
            String asString = json.get("serializedComponentType").getAsString();
            synchronized (f86154a) {
                int i10 = 0;
                while (true) {
                    try {
                        List<InterfaceC13202b> list = f86154a;
                        if (i10 >= list.size()) {
                            throw new ComponentDeserializeException("Invalid component type " + asString);
                        }
                        InterfaceC13202b interfaceC13202b = list.get(i10);
                        if (interfaceC13202b.c().equalsIgnoreCase(asString)) {
                            return interfaceC13202b.d(json);
                        }
                        i10++;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            throw new ComponentDeserializeException(e10);
        }
    }

    public static void f(List<Component> components) {
        UserController userController;
        C8.a aVar = W7.b.f27306f;
        if (aVar != null && (userController = aVar.f2461d) != null && userController.Q() && aVar.f2461d.L().equalsIgnoreCase("ITsMagic") && aVar.f2461d.T()) {
            String name = JAVARuntime.Component.class.getName();
            g("====== JAVA RUNTIME ======");
            for (Component component : components) {
                if (!(component instanceof JavaComponent)) {
                    JAVARuntime.Component jAVARuntime = component.toJAVARuntime();
                    if (jAVARuntime == null) {
                        g(JavadocConstants.ANCHOR_PREFIX_END + component.getTitle() + "\" class: " + component.getClass().getSimpleName() + " return null toJAVARuntime()");
                    } else if (jAVARuntime.getClass().getName().equals(name) && component.getClass().getAnnotation(Deprecated.class) == null && component.getClass().getAnnotation(InterfaceC15238b.class) == null) {
                        g(JavadocConstants.ANCHOR_PREFIX_END + component.getTitle() + "\" doesn't explicit declare toJAVARuntime() building default to /cache/rt/");
                        new f(component.getClass());
                    }
                }
            }
            g("====== ------- ======");
            int iconResource = new Component(null).getIconResource();
            g("====== ICON ======");
            for (Component component2 : components) {
                if (component2.getIconResource() == iconResource) {
                    g(JavadocConstants.ANCHOR_PREFIX_END + component2.getTitle() + "\" doesn't explicit declare getIconResource() with a different icon.");
                }
            }
            g("====== ----- ======");
        }
    }

    public static void g(String s10) {
        Log.e("ComponentDictionary", s10);
    }

    public static void h() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new JavaComponent());
        steppedArrayList.add(new ModelRenderer());
        steppedArrayList.add(new SunLight());
        steppedArrayList.add(new SpotLight());
        steppedArrayList.add(new PointLight());
        steppedArrayList.add(new DayNightCycle());
        steppedArrayList.add(new AnimationPlayer());
        steppedArrayList.add(new AnimationTrigger());
        steppedArrayList.add(new Camera());
        steppedArrayList.add(new NoCodeExecutor());
        steppedArrayList.add(new NoCodeFileExecutor());
        steppedArrayList.add(new Collider());
        steppedArrayList.add(new RenderEffectArea());
        steppedArrayList.add(new AmbientLight());
        steppedArrayList.add(new Skybox());
        steppedArrayList.add(new CustomSkybox());
        steppedArrayList.add(new CustomAmbientLight());
        steppedArrayList.add(new GradientSkybox());
        steppedArrayList.add(new GradientLight());
        steppedArrayList.add(new AtmosphericScattering());
        steppedArrayList.add(new PrecomputedAtmosphereSkybox());
        steppedArrayList.add(new PrecomputedAtmosphereSkybox2());
        steppedArrayList.add(new Bloom());
        steppedArrayList.add(new FastBloom());
        steppedArrayList.add(new ToneMapper());
        steppedArrayList.add(new DepthOfField());
        steppedArrayList.add(new Vignette());
        steppedArrayList.add(new SSAO());
        steppedArrayList.add(new ContactShadows());
        steppedArrayList.add(new VSMShadow());
        steppedArrayList.add(new DPCFShadow());
        steppedArrayList.add(new PCSSShadow());
        steppedArrayList.add(new Fog());
        steppedArrayList.add(new ChromaticAberration());
        steppedArrayList.add(new LensDistortion());
        steppedArrayList.add(new LensDirt());
        steppedArrayList.add(new Contrast());
        steppedArrayList.add(new Brightness());
        steppedArrayList.add(new Saturation());
        steppedArrayList.add(new ContrastBrightnessSaturation());
        steppedArrayList.add(new PostVignette());
        steppedArrayList.add(new VHSFilter());
        steppedArrayList.add(new FilmGrainScratch());
        steppedArrayList.add(new NightVision());
        steppedArrayList.add(new Posterize());
        steppedArrayList.add(new Pixelate());
        steppedArrayList.add(new OrderedDither());
        steppedArrayList.add(new Halftone());
        steppedArrayList.add(new GodRaysLightShafts());
        steppedArrayList.add(new DigitalGlitchPeriodicDisturbance());
        steppedArrayList.add(new DigitalGlitchImageBlockDamage());
        steppedArrayList.add(new DigitalGlitchBlockDistortionColorShift());
        steppedArrayList.add(new DigitalGlitchJitter());
        steppedArrayList.add(new DigitalGlitchLineDisplacement());
        steppedArrayList.add(new DigitalGlitchOrganicNoiseDistortion());
        steppedArrayList.add(new DigitalGlitchCircleBlockDamage());
        steppedArrayList.add(new DigitalGlitchLineBlockDamage());
        steppedArrayList.add(new DigitalGlitchRandomDistortionFeed());
        steppedArrayList.add(new DigitalGlitchPixelDifferenceCompare());
        steppedArrayList.add(new DigitalGlitchRetroCorruptedScreen());
        steppedArrayList.add(new DigitalGlitchBrokenPixelDistortion());
        steppedArrayList.add(new DigitalGlitchHorizontalSliceDistortion());
        steppedArrayList.add(new DigitalGlitchSwirlFragments());
        steppedArrayList.add(new DigitalGlitchPixelatedRgbInterlace());
        steppedArrayList.add(new DigitalGlitchChaoticSmoothBlend());
        steppedArrayList.add(new DigitalGlitchVoronoiDistortion());
        steppedArrayList.add(new DigitalGlitchSmoothColorShiftMask());
        steppedArrayList.add(new DigitalGlitchRandomRgbShift());
        steppedArrayList.add(new DigitalGlitchSineChannelDistortion());
        steppedArrayList.add(new DigitalGlitchDistortionBars());
        steppedArrayList.add(new CustomPostProcessing());
        steppedArrayList.add(new GaussianBlur());
        steppedArrayList.add(new MotionBlur());
        steppedArrayList.add(new Sharpen());
        steppedArrayList.add(new Outline());
        steppedArrayList.add(new CavityRidgeValley());
        steppedArrayList.add(new ProcessingGraph());
        steppedArrayList.add(new ObjectPool());
        steppedArrayList.add(new SoundListener());
        steppedArrayList.add(new SoundPlayer(true));
        steppedArrayList.add(new VehicleWheel());
        steppedArrayList.add(new SkinJoint());
        steppedArrayList.add(new SkinnedModelRenderer());
        steppedArrayList.add(new AnimatedModelRenderer());
        steppedArrayList.add(new EmbeddedMatMR());
        steppedArrayList.add(new Armature());
        steppedArrayList.add(new BakedArmature());
        steppedArrayList.add(new Terrain());
        steppedArrayList.add(new StickToTerrain());
        steppedArrayList.add(new ModelTerrainLevel());
        steppedArrayList.add(new BoxTerrainLevel());
        steppedArrayList.add(new BoundingTerrainLevel());
        steppedArrayList.add(new Road());
        steppedArrayList.add(new RoadPoint());
        steppedArrayList.add(new MeshCurve());
        steppedArrayList.add(new CurvePath());
        steppedArrayList.add(new PathPoint());
        steppedArrayList.add(new PointConnector());
        steppedArrayList.add(new BakeChildSuppressor());
        steppedArrayList.add(new UIController());
        steppedArrayList.add(new UIRect());
        steppedArrayList.add(new UITextView());
        steppedArrayList.add(new UIButton());
        steppedArrayList.add(new UICheckBox());
        steppedArrayList.add(new UIRadioButton());
        steppedArrayList.add(new UIRadioGroup());
        steppedArrayList.add(new UIHoverButton());
        steppedArrayList.add(new UITouchTrigger());
        steppedArrayList.add(new UIAlignment());
        steppedArrayList.add(new UIPinchDetector());
        steppedArrayList.add(new UIAspectRatio());
        steppedArrayList.add(new UIRectangularMask());
        steppedArrayList.add(new UIVerticalLayout());
        steppedArrayList.add(new UIHorizontalLayout());
        steppedArrayList.add(new UIGridLayout());
        steppedArrayList.add(new UIFlexLayout());
        steppedArrayList.add(new UIWeight());
        steppedArrayList.add(new UIFitParent());
        steppedArrayList.add(new UIVerticalScrollView());
        steppedArrayList.add(new UIHorizontalScrollView());
        steppedArrayList.add(new UIImage());
        steppedArrayList.add(new UIRotateImage());
        steppedArrayList.add(new UISpriteRenderer());
        steppedArrayList.add(new UIKeyEventListener());
        steppedArrayList.add(new UIAxisEventListener());
        steppedArrayList.add(new UIAnchor());
        steppedArrayList.add(new UIDynamicJoystick());
        steppedArrayList.add(new UIJoystick());
        steppedArrayList.add(new UIDrivingWheel());
        steppedArrayList.add(new UISlideArea());
        steppedArrayList.add(new UIInputText());
        steppedArrayList.add(new UIProgressBar());
        steppedArrayList.add(new UISlideBar());
        steppedArrayList.add(new UIBarHandler());
        steppedArrayList.add(new UI3DInputSystem());
        steppedArrayList.add(new UI3DCameraAimInputSystem());
        steppedArrayList.add(new UIShape());
        steppedArrayList.add(new UIWebView());
        steppedArrayList.add(new LOD());
        steppedArrayList.add(new LODTarget());
        steppedArrayList.add(new UICustomPostProcessing());
        steppedArrayList.add(new UIVHSFilter());
        steppedArrayList.add(new UIBackgroundBlur());
        steppedArrayList.add(new UIBloom());
        steppedArrayList.add(new UIFadeOut());
        steppedArrayList.add(new UIGaussianBlur());
        steppedArrayList.add(new UIChromaticAberration());
        steppedArrayList.add(new UILensDistortion());
        steppedArrayList.add(new UIContrastBrightnessSaturation());
        steppedArrayList.add(new UIPostVignette());
        steppedArrayList.add(new UISharpen());
        steppedArrayList.add(new UIOutline());
        steppedArrayList.add(new UIPostTransform());
        steppedArrayList.add(new UIProcessingGraph());
        steppedArrayList.add(new Rigidbody());
        steppedArrayList.add(new VehiclePhysics());
        steppedArrayList.add(new Characterbody());
        steppedArrayList.add(new AreaTrigger());
        steppedArrayList.add(new CustomVFXEffect());
        steppedArrayList.add(new DecalProjector());
        steppedArrayList.add(new HoleProjector());
        steppedArrayList.add(new TestVFXEffect());
        steppedArrayList.add(new HingeConstraint());
        steppedArrayList.add(new PointConstraint());
        steppedArrayList.add(new ConstraintPivot());
        steppedArrayList.add(new ConstraintHitch());
        steppedArrayList.add(new PathFinder(null));
        steppedArrayList.add(new AStarPathFinder());
        steppedArrayList.add(new AStarWaypoint());
        steppedArrayList.add(new AStarWaypointConnection());
        steppedArrayList.add(new BakedNavMesh());
        steppedArrayList.add(new IgnoreSave());
        steppedArrayList.add(new Route());
        steppedArrayList.add(new RouteFollower());
        steppedArrayList.add(new SmoothCameraFollow());
        steppedArrayList.add(new OrbitalCameraFollow());
        steppedArrayList.add(new SlideRotate());
        steppedArrayList.add(new StandUp());
        steppedArrayList.add(new RenderTextureExtractor());
        steppedArrayList.add(new Billboard());
        steppedArrayList.add(new ScaleBasedDistance());
        steppedArrayList.add(new TimedObjectDestructor());
        steppedArrayList.add(new TimedObjectDeactivator());
        steppedArrayList.add(new ParticleEmitter(true));
        steppedArrayList.add(new SpriteRenderer());
        steppedArrayList.add(new TrailRenderer());
        steppedArrayList.add(new WindEffect());
        steppedArrayList.add(new ObjectLink());
        steppedArrayList.add(new PrefabLink());
        steppedArrayList.add(new EnemyAI());
        steppedArrayList.add(new LuaComponent());
        steppedArrayList.add(new Array());
        steppedArrayList.add(new MicrophoneReader());
        steppedArrayList.add(new SpeechRecognizer());
        steppedArrayList.add(new KeyboardMapper());
        steppedArrayList.add(new KeyboardAxisMapper());
        steppedArrayList.add(new GamePadMapper());
        steppedArrayList.add(new GamePadAxisMapper());
        steppedArrayList.add(new MouseAxisMapper());
        steppedArrayList.add(new MouseMapper());
        steppedArrayList.add(new VoxelChunk());
        steppedArrayList.add(new VoxelGenerator());
        steppedArrayList.add(new VoxelChunkSpawner());
        steppedArrayList.add(new VoxelHand());
        steppedArrayList.add(new VideoPlayer());
        steppedArrayList.add(new HideObjectFromPanel());
        steppedArrayList.add(new CubeGizmoRenderer());
        steppedArrayList.add(new AreaEditorComponent());
        steppedArrayList.addAll(C13906a.a());
        g("Components count " + steppedArrayList.size());
        f(steppedArrayList);
        steppedArrayList.clear();
    }
}
