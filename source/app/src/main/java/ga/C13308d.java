package ga;

import JAVARuntime.ClassCategory;
import JAVARuntime.Component;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.AnimationPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Animation.Trigger.AnimationTrigger;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Collider.Collider;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ComponentUtils.BakeChildSuppressor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.GamePadAxisMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.GamePadMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.KeyboardAxisMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.KeyboardMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.MouseAxisMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.InputMappers.MouseMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD.LOD;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LOD.LODTarget;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.DayNightCycle;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.PointLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SpotLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Light.SunLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.LuaComponent.LuaComponent;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleGroup;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.CurvePath;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.MeshCurve;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.PathPoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Path.PointConnector;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PathFinder.PathFinder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.VehiclePhysics;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint.ConstraintPivot;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint.HingeConstraint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PhysicsConstraint.PointConstraint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.AmbientLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.AtmosphericScattering;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CavityRidgeValley;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ChromaticAberration;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ContactShadows;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomAmbientLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomPostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.CustomSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.DepthOfField;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.FastBloom;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.FilmGrainScratch;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Fog;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GaussianBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GradientLight;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.GradientSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.LensDistortion;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.MotionBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.NightVision;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PrecomputedAtmosphereSkybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.PrecomputedAtmosphereSkybox2;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.SSAO;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.SSR;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Skybox;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.ToneMapper;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.VHSFilter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Camera.Vignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.Manager.RenderEffectArea;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIBackgroundBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIBloom;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIChromaticAberration;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIContrastBrightnessSaturation;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UICustomPostProcessing;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIFadeOut;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIGaussianBlur;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIOutline;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIPostVignette;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UISharpen;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.PostProcessing.UI.UIVHSFilter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.Billboard;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.RenderTextureExtractor;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.ScaleBasedDistance;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.SlideRotate;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Prototyping.StandUp;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.Route;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Route.RouteFollower;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkeletonBone.SkinJoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.Armature;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.MicrophoneReader;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundListener;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SoundPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Sound.SpeechRecognizer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents.BoundingTerrainLevel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents.BoxTerrainLevel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.LevelComponents.ModelTerrainLevel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.Road;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Roads.RoadPoint;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.StickToTerrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.TrailSystem.TrailRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Vehicle.VehicleWheel;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VideoPlayer.VideoPlayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunk;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.ChunkSystem.VoxelChunkSpawner;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.PlayerSystem.VoxelHand;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VoxelSystem.TerrainSystem.VoxelGenerator;
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
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIProgressBar;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRadioButton;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRadioGroup;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRectangularMask;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIRotateImage;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIShape;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISlideArea;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UISlideBar;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UITouchTrigger;
import com.itsmagic.engine.Engines.Engine.ImGUI.Widgets.UIVerticalScrollView;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeInputDefault;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.ObjectReferencing.AdvComponentReference;
import gb.C13317e;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import z3.C16258a;

public final class C13308d {

    public static final String f88187a = "[Pick first]";

    public static final String f88188b = "Owner";

    public static final Map<H, String> f88189c = new EnumMap(H.class);

    public static final Map<String, H> f88190d = new HashMap();

    public static final Map<H, Class<? extends Component>> f88191e = new EnumMap(H.class);

    static {
        u(H.COMPONENT_AMBIENT_LIGHT, AmbientLight.f74711O);
        u(H.COMPONENT_ANIMATION_PLAYER, AnimationPlayer.f72961K);
        u(H.COMPONENT_ANIMATION_TRIGGER, AnimationTrigger.f73026M);
        u(H.COMPONENT_ARMATURE, Armature.f76395L);
        u(H.COMPONENT_ATMOSPHERIC_SCATTERING, AtmosphericScattering.f74740T);
        u(H.COMPONENT_BAKE_CHILD_SUPPRESSOR, BakeChildSuppressor.f73299G);
        u(H.COMPONENT_BILLBOARD, Billboard.f76177G);
        u(H.COMPONENT_BLOOM, "Bloom");
        u(H.COMPONENT_BOUNDING_TERRAIN_LEVEL, BoundingTerrainLevel.f76796T);
        u(H.COMPONENT_BOX_TERRAIN_LEVEL, BoxTerrainLevel.f76817O);
        u(H.COMPONENT_CAMERA, Camera.f73075M8);
        u(H.COMPONENT_CAVITY_RIDGE_VALLEY, CavityRidgeValley.f74830q0);
        u(H.COMPONENT_CHROMATIC_ABERRATION, ChromaticAberration.f74842X);
        u(H.COMPONENT_COLLIDER, Collider.f73199i3);
        u(H.COMPONENT_CONSTRAINT_PIVOT, ConstraintPivot.f74536F);
        u(H.COMPONENT_CONTACT_SHADOWS, ContactShadows.f74850I);
        u(H.COMPONENT_CURVE_PATH, CurvePath.f74160y1);
        u(H.COMPONENT_CUSTOM_AMBIENT_LIGHT, CustomAmbientLight.f74881T);
        u(H.COMPONENT_CUSTOM_POST_PROCESSING, CustomPostProcessing.f74935i1);
        u(H.COMPONENT_CUSTOM_SKYBOX, CustomSkybox.f74969V);
        u(H.COMPONENT_DAY_NIGHT_CYCLE, DayNightCycle.f73476I);
        u(H.COMPONENT_DEPTH_OF_FIELD, DepthOfField.f75032I);
        u(H.COMPONENT_ENEMY_AI_TYPE_A, "EnemyAITypeA");
        u(H.COMPONENT_FAST_BLOOM, FastBloom.f75077X);
        u(H.COMPONENT_FILM_GRAIN_SCRATCH, FilmGrainScratch.f75085D0);
        u(H.COMPONENT_FOG, Fog.f75106I);
        u(H.COMPONENT_GAUSSIAN_BLUR, GaussianBlur.f75122X);
        u(H.COMPONENT_GRADIENT_LIGHT, GradientLight.f75223O);
        u(H.COMPONENT_GRADIENT_SKYBOX, GradientSkybox.f75258Q);
        u(H.COMPONENT_HINGE_CONSTRAINT, HingeConstraint.f74539H1);
        u(H.COMPONENT_GAME_PAD_MAPPER, GamePadMapper.f73325H);
        u(H.COMPONENT_GAME_PAD_AXIS_MAPPER, GamePadAxisMapper.f73317H);
        u(H.COMPONENT_KEYBOARD_MAPPER, KeyboardMapper.f73351H);
        u(H.COMPONENT_KEYBOARD_AXIS_MAPPER, KeyboardAxisMapper.f73342H);
        u(H.COMPONENT_MOUSE_AXIS_MAPPER, MouseAxisMapper.f73358H);
        u(H.COMPONENT_MOUSE_MAPPER, MouseMapper.f73364H);
        u(H.COMPONENT_LOD, LOD.f73462H);
        u(H.COMPONENT_LOD_TARGET, LODTarget.f73473F);
        u(H.COMPONENT_LENS_DISTORTION, LensDistortion.f75335Z);
        u(H.COMPONENT_LUA_COMPONENT, LuaComponent.f73664K);
        u(H.COMPONENT_MESH_CURVE, MeshCurve.f74198H4);
        u(H.COMPONENT_MICROPHONE_READER, MicrophoneReader.f76593O);
        u(H.COMPONENT_MODEL_RENDERER, ModelRenderer.f73743b1);
        u(H.COMPONENT_MODEL_TERRAIN_LEVEL, ModelTerrainLevel.f76830Q);
        u(H.COMPONENT_MOTION_BLUR, MotionBlur.f75343O);
        u(H.COMPONENT_NAV_MESH, "NavMesh");
        u(H.COMPONENT_NIGHT_VISION, NightVision.f75384i1);
        u(H.COMPONENT_POOL_COMPONENT, "PoolComponent");
        u(H.COMPONENT_OBJECT_POOL, ObjectPool.f74700L8);
        u(H.COMPONENT_OUTLINE, "Outline");
        u(H.COMPONENT_PARTICLE_EMITTER, ParticleEmitter.f73877L2);
        u(H.COMPONENT_PARTICLE_GROUP, ParticleGroup.f74026F);
        u(H.COMPONENT_PATH_FINDER, PathFinder.f74315b1);
        u(H.COMPONENT_PATH_POINT, PathPoint.f74278U);
        u(H.COMPONENT_POINT_CONNECTOR, PointConnector.f74301K);
        u(H.COMPONENT_POINT_CONSTRAINT, PointConstraint.f74545H1);
        u(H.COMPONENT_POINT_LIGHT, PointLight.f73488M);
        u(H.COMPONENT_POST_VIGNETTE, "PostVignette");
        u(H.COMPONENT_PRECOMPUTED_ATMOSPHERE_SKYBOX, PrecomputedAtmosphereSkybox.f75479q1);
        u(H.COMPONENT_PRECOMPUTED_ATMOSPHERE_SKYBOX2, PrecomputedAtmosphereSkybox2.f75574D0);
        u(H.COMPONENT_RENDER_EFFECT_AREA, RenderEffectArea.f75893K);
        u(H.COMPONENT_RENDER_TEXTURE_EXTRACTOR, RenderTextureExtractor.f76238F);
        u(H.COMPONENT_ROAD, Road.f76883T);
        u(H.COMPONENT_ROAD_POINT, RoadPoint.f76919L);
        u(H.COMPONENT_ROUTE, Route.f76352J);
        u(H.COMPONENT_ROUTE_FOLLOWER, RouteFollower.f76360Q);
        u(H.COMPONENT_SSAO, SSAO.f75691I);
        u(H.COMPONENT_SSR, SSR.f75705I);
        u(H.COMPONENT_SCALE_BASED_DISTANCE, ScaleBasedDistance.f76241F);
        u(H.COMPONENT_SHARPEN, "Sharpen");
        u(H.COMPONENT_SIMPLE_ENEMY_AI, "SimpleEnemyAI");
        u(H.COMPONENT_SKIN_JOINT, SkinJoint.f76378P);
        u(H.COMPONENT_SKINNED_MODEL_RENDERER, SkinnedModelRenderer.f76419L2);
        u(H.COMPONENT_SKYBOX, Skybox.f75731N);
        u(H.COMPONENT_SLIDE_ROTATE, SlideRotate.f76247H);
        u(H.COMPONENT_SMOOTH_CAMERA_FOLLOW, "SmoothCameraFollow");
        u(H.COMPONENT_SOUND_LISTENER, SoundListener.f76614H);
        u(H.COMPONENT_SOUND_PLAYER, SoundPlayer.f76628X);
        u(H.COMPONENT_SPEECH_RECOGNIZER, SpeechRecognizer.f76668N);
        u(H.COMPONENT_SPOT_LIGHT, SpotLight.f73531M);
        u(H.COMPONENT_STAND_UP, StandUp.f76333I);
        u(H.COMPONENT_STICK_TO_TERRAIN, StickToTerrain.f76963L);
        u(H.COMPONENT_SUN_LIGHT, SunLight.f73584K);
        u(H.COMPONENT_TERRAIN, Terrain.f76979i9);
        u(H.COMPONENT_TONE_MAPPER, ToneMapper.f75758I);
        u(H.COMPONENT_TRAIL_RENDERER, TrailRenderer.f77309L1);
        u(H.COMPONENT_UI_3_D_CAMERA_AIM_INPUT_SYSTEM, UI3DCameraAimInputSystem.f78008J);
        u(H.COMPONENT_UI_3_D_INPUT_SYSTEM, UI3DInputSystem.f78018H);
        u(H.COMPONENT_UI_ALIGNMENT, UIAlignment.f78352Q);
        u(H.COMPONENT_UI_ANCHOR, UIAnchor.f78357S);
        u(H.COMPONENT_UI_ASPECT_RATIO, UIAspectRatio.f78396Q);
        u(H.COMPONENT_UI_AXIS_EVENT_LISTENER, UIAxisEventListener.f78401S);
        u(H.COMPONENT_UI_BACKGROUND_BLUR, UIBackgroundBlur.f75949X);
        u(H.COMPONENT_UI_BAR_HANDLER, UIBarHandler.f78407Q);
        u(H.COMPONENT_UI_BLOOM, UIBloom.f75964Y);
        u(H.COMPONENT_UI_BUTTON, UIButton.f78412U);
        u(H.COMPONENT_UI_CHECK_BOX, UICheckBox.f78446S);
        u(H.COMPONENT_UI_CHROMATIC_ABERRATION, UIChromaticAberration.f75976X);
        u(H.COMPONENT_UI_CONTRAST_BRIGHTNESS_SATURATION, UIContrastBrightnessSaturation.f75987W);
        u(H.COMPONENT_UI_CONTROLLER, UIController.f78024F1);
        u(H.COMPONENT_UI_CUSTOM_POST_PROCESSING, UICustomPostProcessing.f75997i1);
        u(H.COMPONENT_UI_DRIVING_WHEEL, UIDrivingWheel.f78456V);
        u(H.COMPONENT_UI_DYNAMIC_JOYSTICK, UIDynamicJoystick.f78470X);
        u(H.COMPONENT_UI_FADE_OUT, UIFadeOut.f76027U);
        u(H.COMPONENT_UI_FIT_PARENT, UIFitParent.f78495Q);
        u(H.COMPONENT_UI_FLEX_LAYOUT, UIFlexLayout.f78141X);
        u(H.COMPONENT_UI_GAUSSIAN_BLUR, UIGaussianBlur.f76037X);
        u(H.COMPONENT_UI_GRID_LAYOUT, UIGridLayout.f78152W);
        u(H.COMPONENT_UI_HORIZONTAL_LAYOUT, UIHorizontalLayout.f78164W);
        u(H.COMPONENT_UI_HORIZONTAL_SCROLL_VIEW, UIHorizontalScrollView.f78504X);
        u(H.COMPONENT_UI_HOVER_BUTTON, UIHoverButton.f78516U);
        u(H.COMPONENT_UI_IMAGE, UIImage.f78552T);
        u(H.COMPONENT_UI_INPUT_TEXT, UIInputText.f78571V);
        u(H.COMPONENT_UI_JOYSTICK, UIJoystick.f78597W);
        u(H.COMPONENT_UI_KEY_EVENT_LISTENER, UIKeyEventListener.f78620R);
        u(H.COMPONENT_UI_OUTLINE, UIOutline.f76063X);
        u(H.COMPONENT_UI_POST_TRANSFORM, "UIPostTransform");
        u(H.COMPONENT_UI_POST_VIGNETTE, UIPostVignette.f76094Y);
        u(H.COMPONENT_UI_PROGRESS_BAR, UIProgressBar.f78648Q);
        u(H.COMPONENT_UI_RADIO_BUTTON, UIRadioButton.f78671S);
        u(H.COMPONENT_UI_RADIO_GROUP, UIRadioGroup.f78681F);
        u(H.COMPONENT_UI_RECT, UIRect.f78081q1);
        u(H.COMPONENT_UI_RECTANGULAR_MASK, UIRectangularMask.f78684Q);
        u(H.COMPONENT_UI_ROTATE_IMAGE, UIRotateImage.f78687T);
        u(H.COMPONENT_UI_SHAPE, UIShape.f78706V);
        u(H.COMPONENT_UI_SHARPEN, UISharpen.f76128X);
        u(H.COMPONENT_UI_SLIDE_AREA, UISlideArea.f78757V);
        u(H.COMPONENT_UI_SLIDE_BAR, UISlideBar.f78768Q);
        u(H.COMPONENT_UI_TEXT_VIEW, "UITextView");
        u(H.COMPONENT_UI_TOUCH_TRIGGER, UITouchTrigger.f78830U);
        u(H.COMPONENT_UI_VERTICAL_LAYOUT, UIVerticalLayout.f78174W);
        u(H.COMPONENT_UI_VERTICAL_SCROLL_VIEW, UIVerticalScrollView.f78850X);
        u(H.COMPONENT_UI_VHS_FILTER, UIVHSFilter.f76145m1);
        u(H.COMPONENT_UI_WEIGHT, UIWeight.f78184F);
        u(H.COMPONENT_VHS_FILTER, VHSFilter.f75791m1);
        u(H.COMPONENT_VEHICLE_PHYSICS, VehiclePhysics.f74456v1);
        u(H.COMPONENT_VEHICLE_WHEEL, VehicleWheel.f77532q3);
        u(H.COMPONENT_VIDEO_PLAYER, VideoPlayer.f77631Y);
        u(H.COMPONENT_VIGNETTE, Vignette.f75824J);
        u(H.COMPONENT_VOXEL_CHUNK, VoxelChunk.f77676q2);
        u(H.COMPONENT_VOXEL_CHUNK_SPAWNER, VoxelChunkSpawner.f77763N);
        u(H.COMPONENT_VOXEL_COLLIDER, "VoxelCollider");
        u(H.COMPONENT_VOXEL_GENERATOR, VoxelGenerator.f77876G);
        u(H.COMPONENT_VOXEL_HAND, VoxelHand.f77795V1);
        u(H.COMPONENT_VOXEL_PHYSICS, "VoxelPhysics");
        u(H.COMPONENT_VOXEL_PLAYER_CONTROLLER, "VoxelPlayerController");
    }

    public static GameObject A(Object value) {
        if (value instanceof GameObject) {
            GameObject gameObject = (GameObject) value;
            if (C13317e.J(gameObject)) {
                return gameObject;
            }
            return null;
        }
        if (!(value instanceof Component)) {
            return null;
        }
        Component component = (Component) value;
        if (component.getEngineComponent() == null) {
            return null;
        }
        GameObject gameObject2 = component.getEngineComponent().f79250n;
        if (C13317e.J(gameObject2)) {
            return gameObject2;
        }
        return null;
    }

    public static Component B(com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component component) {
        if (component != null) {
            return component.toJAVARuntime();
        }
        return null;
    }

    public static boolean a(H from, H to) {
        if (!n(from) || !n(to)) {
            return false;
        }
        H h10 = H.ANY_COMPONENT;
        return from == h10 || to == h10 || from == to;
    }

    public static Object b(Object value, H desiredType) {
        if (desiredType == null || desiredType == H.DYNAMIC || value == null || !n(desiredType)) {
            return value;
        }
        if (!(value instanceof Component)) {
            return null;
        }
        Component component = (Component) value;
        if (s(desiredType, component)) {
            return component;
        }
        return null;
    }

    public static H c(H slotType, H storedType) {
        return o(storedType) ? storedType : n(slotType) ? slotType : n(storedType) ? storedType : H.ANY_COMPONENT;
    }

    public static String d(Component component, GameObject owner) {
        if (component != null && component.getEngineComponent() != null) {
            try {
                AdvComponentReference advComponentReference = new AdvComponentReference(component.getEngineComponent());
                advComponentReference.i(owner);
                advComponentReference.j();
                return advComponentReference.k();
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public static Component e(GameObject owner, H type) {
        List<Component> f10 = f(owner, type);
        if (f10.isEmpty()) {
            return null;
        }
        return f10.get(0);
    }

    public static List<Component> f(GameObject owner, H type) {
        Component jAVARuntime;
        if (!C13317e.J(owner) || !n(type)) {
            return Collections.emptyList();
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < owner.N(); i10++) {
            com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component L10 = owner.L(i10);
            if (L10 != null && (jAVARuntime = L10.toJAVARuntime()) != null && s(type, jAVARuntime)) {
                steppedArrayList.add(jAVARuntime);
            }
        }
        return steppedArrayList;
    }

    public static String g(H type) {
        String str;
        if (!o(type)) {
            return "Components";
        }
        Class<? extends Component> j10 = j(type);
        ClassCategory classCategory = j10 != null ? (ClassCategory) j10.getAnnotation(ClassCategory.class) : null;
        return (classCategory == null || classCategory.cat().length == 0 || (str = classCategory.cat()[0]) == null || str.trim().isEmpty()) ? "Components" : str.trim();
    }

    public static H h() {
        for (H h10 : H.values()) {
            if (o(h10)) {
                return h10;
            }
        }
        return H.ANY_COMPONENT;
    }

    public static String i(H type) {
        if (type == null) {
            return "";
        }
        if (type == H.ANY_COMPONENT) {
            return "Any Component";
        }
        String str = f88189c.get(type);
        return str != null ? str : type.name();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Class<? extends Component> j(H type) {
        if (!o(type)) {
            return null;
        }
        Map<H, Class<? extends Component>> map = f88191e;
        Class<? extends Component> cls = (Class) map.get(type);
        if (cls != null) {
            return cls;
        }
        String str = f88189c.get(type);
        if (str != null && !str.isEmpty()) {
            try {
                Class cls2 = Class.forName("JAVARuntime." + str);
                if (Component.class.isAssignableFrom(cls2)) {
                    map.put(type, cls2);
                    return cls2;
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        return null;
    }

    public static List<String> k() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (H h10 : H.values()) {
            if (o(h10)) {
                linkedHashSet.add(g(h10));
            }
        }
        return new SteppedArrayList(linkedHashSet);
    }

    public static List<H> l(String category) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String trim = category != null ? category.trim() : "";
        for (H h10 : H.values()) {
            if (o(h10) && trim.equalsIgnoreCase(g(h10))) {
                steppedArrayList.add(h10);
            }
        }
        return steppedArrayList;
    }

    public static H m(Component component) {
        if (component == null) {
            return H.ANY_COMPONENT;
        }
        for (Class<?> cls = component.getClass(); cls != null && cls != Object.class; cls = cls.getSuperclass()) {
            H h10 = f88190d.get(cls.getSimpleName());
            if (h10 != null) {
                return h10;
            }
        }
        return H.ANY_COMPONENT;
    }

    public static boolean n(H type) {
        return type == H.ANY_COMPONENT || f88189c.containsKey(type);
    }

    public static boolean o(H type) {
        return (type == null || type == H.ANY_COMPONENT || !f88189c.containsKey(type)) ? false : true;
    }

    public static String p(Component component) {
        if (component == null) {
            return f88187a;
        }
        String component2 = component.toString();
        if (component2 == null || component2.trim().isEmpty()) {
            component2 = component.getTittle();
        }
        return (component2 == null || component2.trim().isEmpty()) ? component.getClass().getSimpleName() : component2;
    }

    public static List<String> q() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (H h10 : H.values()) {
            if (o(h10)) {
                Class<? extends Component> j10 = j(h10);
                if (j10 != null) {
                    String simpleName = j10.getSimpleName();
                    if (!simpleName.trim().isEmpty()) {
                        linkedHashSet.add(simpleName.trim());
                    }
                }
                String i10 = i(h10);
                if (i10 != null && !i10.trim().isEmpty()) {
                    linkedHashSet.add(i10.trim());
                }
            }
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(linkedHashSet);
        steppedArrayList.sort(new C16258a());
        return steppedArrayList;
    }

    public static String r() {
        return String.join(", ", q());
    }

    public static boolean s(H type, Component component) {
        if (component == null) {
            return false;
        }
        if (type == H.ANY_COMPONENT) {
            return true;
        }
        Class<? extends Component> j10 = j(type);
        return j10 != null && j10.isInstance(component);
    }

    public static H t(H a10, H b10) {
        if (!n(a10) || !n(b10)) {
            return null;
        }
        H h10 = H.DYNAMIC;
        return a10 == h10 ? b10 : (b10 == h10 || a10 == b10) ? a10 : H.ANY_COMPONENT;
    }

    public static void u(H type, String runtimeSimpleName) {
        f88189c.put(type, runtimeSimpleName);
        f88190d.put(runtimeSimpleName, type);
    }

    public static Component v(NoCodeInputDefault inputDefault, GameObject owner, com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component ownerComponent, H slotType, String providerValue) {
        H c10 = c(slotType, inputDefault != null ? inputDefault.type : null);
        if (inputDefault != null) {
            Object obj = inputDefault.f79016a;
            if (obj instanceof Component) {
                Component component = (Component) obj;
                if (s(c10, component)) {
                    return component;
                }
            }
            Component x10 = x(inputDefault.jsonData, owner);
            if (s(c10, x10)) {
                inputDefault.f79016a = x10;
                return x10;
            }
            inputDefault.f79016a = null;
            String str = inputDefault.stringValue;
            String trim = str != null ? str.trim() : "";
            if (trim.isEmpty() || f88187a.equalsIgnoreCase(trim)) {
                return e(owner, c10);
            }
            if (z(c10) && f88188b.equalsIgnoreCase(trim)) {
                Component B10 = B(ownerComponent);
                if (s(c10, B10)) {
                    return B10;
                }
                return null;
            }
        }
        return w(providerValue, owner, ownerComponent, c10);
    }

    public static Component w(String providerValue, GameObject owner, com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component ownerComponent, H slotType) {
        H c10 = c(slotType, null);
        String trim = providerValue != null ? providerValue.trim() : "";
        if (trim.isEmpty() || f88187a.equalsIgnoreCase(trim)) {
            return e(owner, c10);
        }
        if (z(c10) && f88188b.equalsIgnoreCase(trim)) {
            Component B10 = B(ownerComponent);
            if (s(c10, B10)) {
                return B10;
            }
            return null;
        }
        Component x10 = x(trim, owner);
        if (s(c10, x10)) {
            return x10;
        }
        return null;
    }

    public static Component x(String referenceJson, GameObject owner) {
        AdvComponentReference advComponentReference;
        if (referenceJson == null) {
            return null;
        }
        if (!referenceJson.trim().isEmpty()) {
            try {
                advComponentReference = (AdvComponentReference) X7.a.m().fromJson(referenceJson, AdvComponentReference.class);
                if (advComponentReference == null) {
                    return null;
                }
                advComponentReference.i(owner);
                if (advComponentReference.g() == null) {
                    return null;
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return advComponentReference.g().toJAVARuntime();
    }

    public static H y(H type) {
        return o(type) ? type : h();
    }

    public static boolean z(H type) {
        return type == H.ANY_COMPONENT;
    }
}
