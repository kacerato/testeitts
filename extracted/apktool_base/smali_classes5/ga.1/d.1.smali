.class public final Lga/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "[Pick first]"

.field public static final b:Ljava/lang/String; = "Owner"

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lga/H;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lga/H;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lga/H;",
            "Ljava/lang/Class<",
            "+",
            "LJAVARuntime/Component;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lga/H;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lga/d;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lga/d;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lga/d;->e:Ljava/util/Map;

    sget-object v0, Lga/H;->COMPONENT_AMBIENT_LIGHT:Lga/H;

    const-string v1, "AmbientLight"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ANIMATION_PLAYER:Lga/H;

    const-string v1, "AnimationPlayer"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ANIMATION_TRIGGER:Lga/H;

    const-string v1, "AnimationTrigger"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ARMATURE:Lga/H;

    const-string v1, "Armature"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ATMOSPHERIC_SCATTERING:Lga/H;

    const-string v1, "AtmosphericScattering"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_BAKE_CHILD_SUPPRESSOR:Lga/H;

    const-string v1, "BakeChildSuppressor"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_BILLBOARD:Lga/H;

    const-string v1, "Billboard"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_BLOOM:Lga/H;

    const-string v1, "Bloom"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_BOUNDING_TERRAIN_LEVEL:Lga/H;

    const-string v1, "BoundingTerrainLevel"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_BOX_TERRAIN_LEVEL:Lga/H;

    const-string v1, "BoxTerrainLevel"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CAMERA:Lga/H;

    const-string v1, "Camera"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CAVITY_RIDGE_VALLEY:Lga/H;

    const-string v1, "CavityRidgeValley"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CHROMATIC_ABERRATION:Lga/H;

    const-string v1, "ChromaticAberration"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_COLLIDER:Lga/H;

    const-string v1, "Collider"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CONSTRAINT_PIVOT:Lga/H;

    const-string v1, "ConstraintPivot"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CONTACT_SHADOWS:Lga/H;

    const-string v1, "ContactShadows"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CURVE_PATH:Lga/H;

    const-string v1, "CurvePath"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CUSTOM_AMBIENT_LIGHT:Lga/H;

    const-string v1, "CustomAmbientLight"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CUSTOM_POST_PROCESSING:Lga/H;

    const-string v1, "CustomPostProcessing"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_CUSTOM_SKYBOX:Lga/H;

    const-string v1, "CustomSkybox"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_DAY_NIGHT_CYCLE:Lga/H;

    const-string v1, "DayNightCycle"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_DEPTH_OF_FIELD:Lga/H;

    const-string v1, "DepthOfField"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ENEMY_AI_TYPE_A:Lga/H;

    const-string v1, "EnemyAITypeA"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_FAST_BLOOM:Lga/H;

    const-string v1, "FastBloom"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_FILM_GRAIN_SCRATCH:Lga/H;

    const-string v1, "FilmGrainScratch"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_FOG:Lga/H;

    const-string v1, "Fog"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_GAUSSIAN_BLUR:Lga/H;

    const-string v1, "GaussianBlur"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_GRADIENT_LIGHT:Lga/H;

    const-string v1, "GradientLight"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_GRADIENT_SKYBOX:Lga/H;

    const-string v1, "GradientSkybox"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_HINGE_CONSTRAINT:Lga/H;

    const-string v1, "HingeConstraint"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_GAME_PAD_MAPPER:Lga/H;

    const-string v1, "GamePadMapper"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_GAME_PAD_AXIS_MAPPER:Lga/H;

    const-string v1, "GamePadAxisMapper"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_KEYBOARD_MAPPER:Lga/H;

    const-string v1, "KeyboardMapper"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_KEYBOARD_AXIS_MAPPER:Lga/H;

    const-string v1, "KeyboardAxisMapper"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_MOUSE_AXIS_MAPPER:Lga/H;

    const-string v1, "MouseAxisMapper"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_MOUSE_MAPPER:Lga/H;

    const-string v1, "MouseMapper"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_LOD:Lga/H;

    const-string v1, "LOD"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_LOD_TARGET:Lga/H;

    const-string v1, "LODTarget"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_LENS_DISTORTION:Lga/H;

    const-string v1, "LensDistortion"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_LUA_COMPONENT:Lga/H;

    const-string v1, "LuaComponent"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_MESH_CURVE:Lga/H;

    const-string v1, "MeshCurve"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_MICROPHONE_READER:Lga/H;

    const-string v1, "MicrophoneReader"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_MODEL_RENDERER:Lga/H;

    const-string v1, "ModelRenderer"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_MODEL_TERRAIN_LEVEL:Lga/H;

    const-string v1, "ModelTerrainLevel"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_MOTION_BLUR:Lga/H;

    const-string v1, "MotionBlur"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_NAV_MESH:Lga/H;

    const-string v1, "NavMesh"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_NIGHT_VISION:Lga/H;

    const-string v1, "NightVision"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_POOL_COMPONENT:Lga/H;

    const-string v1, "PoolComponent"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_OBJECT_POOL:Lga/H;

    const-string v1, "ObjectPool"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_OUTLINE:Lga/H;

    const-string v1, "Outline"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_PARTICLE_EMITTER:Lga/H;

    const-string v1, "ParticleEmitter"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_PARTICLE_GROUP:Lga/H;

    const-string v1, "ParticleGroup"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_PATH_FINDER:Lga/H;

    const-string v1, "PathFinder"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_PATH_POINT:Lga/H;

    const-string v1, "PathPoint"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_POINT_CONNECTOR:Lga/H;

    const-string v1, "PointConnector"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_POINT_CONSTRAINT:Lga/H;

    const-string v1, "PointConstraint"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_POINT_LIGHT:Lga/H;

    const-string v1, "PointLight"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_POST_VIGNETTE:Lga/H;

    const-string v1, "PostVignette"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_PRECOMPUTED_ATMOSPHERE_SKYBOX:Lga/H;

    const-string v1, "PrecomputedAtmosphereSkybox"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_PRECOMPUTED_ATMOSPHERE_SKYBOX2:Lga/H;

    const-string v1, "PrecomputedAtmosphereSkybox2"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_RENDER_EFFECT_AREA:Lga/H;

    const-string v1, "RenderEffectArea"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_RENDER_TEXTURE_EXTRACTOR:Lga/H;

    const-string v1, "RenderTextureExtractor"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ROAD:Lga/H;

    const-string v1, "Road"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ROAD_POINT:Lga/H;

    const-string v1, "RoadPoint"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ROUTE:Lga/H;

    const-string v1, "Route"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_ROUTE_FOLLOWER:Lga/H;

    const-string v1, "RouteFollower"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SSAO:Lga/H;

    const-string v1, "SSAO"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SSR:Lga/H;

    const-string v1, "SSR"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SCALE_BASED_DISTANCE:Lga/H;

    const-string v1, "ScaleBasedDistance"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SHARPEN:Lga/H;

    const-string v1, "Sharpen"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SIMPLE_ENEMY_AI:Lga/H;

    const-string v1, "SimpleEnemyAI"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SKIN_JOINT:Lga/H;

    const-string v1, "SkinJoint"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SKINNED_MODEL_RENDERER:Lga/H;

    const-string v1, "SkinnedModelRenderer"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SKYBOX:Lga/H;

    const-string v1, "Skybox"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SLIDE_ROTATE:Lga/H;

    const-string v1, "SlideRotate"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SMOOTH_CAMERA_FOLLOW:Lga/H;

    const-string v1, "SmoothCameraFollow"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SOUND_LISTENER:Lga/H;

    const-string v1, "SoundListener"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SOUND_PLAYER:Lga/H;

    const-string v1, "SoundPlayer"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SPEECH_RECOGNIZER:Lga/H;

    const-string v1, "SpeechRecognizer"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SPOT_LIGHT:Lga/H;

    const-string v1, "SpotLight"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_STAND_UP:Lga/H;

    const-string v1, "StandUp"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_STICK_TO_TERRAIN:Lga/H;

    const-string v1, "StickToTerrain"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_SUN_LIGHT:Lga/H;

    const-string v1, "SunLight"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_TERRAIN:Lga/H;

    const-string v1, "Terrain"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_TONE_MAPPER:Lga/H;

    const-string v1, "ToneMapper"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_TRAIL_RENDERER:Lga/H;

    const-string v1, "TrailRenderer"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_3_D_CAMERA_AIM_INPUT_SYSTEM:Lga/H;

    const-string v1, "UI3DCameraAimInputSystem"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_3_D_INPUT_SYSTEM:Lga/H;

    const-string v1, "UI3DInputSystem"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_ALIGNMENT:Lga/H;

    const-string v1, "UIAlignment"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_ANCHOR:Lga/H;

    const-string v1, "UIAnchor"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_ASPECT_RATIO:Lga/H;

    const-string v1, "UIAspectRatio"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_AXIS_EVENT_LISTENER:Lga/H;

    const-string v1, "UIAxisEventListener"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_BACKGROUND_BLUR:Lga/H;

    const-string v1, "UIBackgroundBlur"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_BAR_HANDLER:Lga/H;

    const-string v1, "UIBarHandler"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_BLOOM:Lga/H;

    const-string v1, "UIBloom"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_BUTTON:Lga/H;

    const-string v1, "UIButton"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_CHECK_BOX:Lga/H;

    const-string v1, "UICheckBox"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_CHROMATIC_ABERRATION:Lga/H;

    const-string v1, "UIChromaticAberration"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_CONTRAST_BRIGHTNESS_SATURATION:Lga/H;

    const-string v1, "UIContrastBrightnessSaturation"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_CONTROLLER:Lga/H;

    const-string v1, "UIController"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_CUSTOM_POST_PROCESSING:Lga/H;

    const-string v1, "UICustomPostProcessing"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_DRIVING_WHEEL:Lga/H;

    const-string v1, "UIDrivingWheel"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_DYNAMIC_JOYSTICK:Lga/H;

    const-string v1, "UIDynamicJoystick"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_FADE_OUT:Lga/H;

    const-string v1, "UIFadeOut"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_FIT_PARENT:Lga/H;

    const-string v1, "UIFitParent"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_FLEX_LAYOUT:Lga/H;

    const-string v1, "UIFlexLayout"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_GAUSSIAN_BLUR:Lga/H;

    const-string v1, "UIGaussianBlur"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_GRID_LAYOUT:Lga/H;

    const-string v1, "UIGridLayout"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_HORIZONTAL_LAYOUT:Lga/H;

    const-string v1, "UIHorizontalLayout"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_HORIZONTAL_SCROLL_VIEW:Lga/H;

    const-string v1, "UIHorizontalScrollView"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_HOVER_BUTTON:Lga/H;

    const-string v1, "UIHoverButton"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_IMAGE:Lga/H;

    const-string v1, "UIImage"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_INPUT_TEXT:Lga/H;

    const-string v1, "UIInputText"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_JOYSTICK:Lga/H;

    const-string v1, "UIJoystick"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_KEY_EVENT_LISTENER:Lga/H;

    const-string v1, "UIKeyEventListener"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_OUTLINE:Lga/H;

    const-string v1, "UIOutline"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_POST_TRANSFORM:Lga/H;

    const-string v1, "UIPostTransform"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_POST_VIGNETTE:Lga/H;

    const-string v1, "UIPostVignette"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_PROGRESS_BAR:Lga/H;

    const-string v1, "UIProgressBar"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_RADIO_BUTTON:Lga/H;

    const-string v1, "UIRadioButton"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_RADIO_GROUP:Lga/H;

    const-string v1, "UIRadioGroup"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_RECT:Lga/H;

    const-string v1, "UIRect"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_RECTANGULAR_MASK:Lga/H;

    const-string v1, "UIRectangularMask"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_ROTATE_IMAGE:Lga/H;

    const-string v1, "UIRotateImage"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_SHAPE:Lga/H;

    const-string v1, "UIShape"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_SHARPEN:Lga/H;

    const-string v1, "UISharpen"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_SLIDE_AREA:Lga/H;

    const-string v1, "UISlideArea"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_SLIDE_BAR:Lga/H;

    const-string v1, "UISlideBar"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_TEXT_VIEW:Lga/H;

    const-string v1, "UITextView"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_TOUCH_TRIGGER:Lga/H;

    const-string v1, "UITouchTrigger"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_VERTICAL_LAYOUT:Lga/H;

    const-string v1, "UIVerticalLayout"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_VERTICAL_SCROLL_VIEW:Lga/H;

    const-string v1, "UIVerticalScrollView"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_VHS_FILTER:Lga/H;

    const-string v1, "UIVHSFilter"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_UI_WEIGHT:Lga/H;

    const-string v1, "UIWeight"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VHS_FILTER:Lga/H;

    const-string v1, "VHSFilter"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VEHICLE_PHYSICS:Lga/H;

    const-string v1, "VehiclePhysics"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VEHICLE_WHEEL:Lga/H;

    const-string v1, "VehicleWheel"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VIDEO_PLAYER:Lga/H;

    const-string v1, "VideoPlayer"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VIGNETTE:Lga/H;

    const-string v1, "Vignette"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VOXEL_CHUNK:Lga/H;

    const-string v1, "VoxelChunk"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VOXEL_CHUNK_SPAWNER:Lga/H;

    const-string v1, "VoxelChunkSpawner"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VOXEL_COLLIDER:Lga/H;

    const-string v1, "VoxelCollider"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VOXEL_GENERATOR:Lga/H;

    const-string v1, "VoxelGenerator"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VOXEL_HAND:Lga/H;

    const-string v1, "VoxelHand"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VOXEL_PHYSICS:Lga/H;

    const-string v1, "VoxelPhysics"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    sget-object v0, Lga/H;->COMPONENT_VOXEL_PLAYER_CONTROLLER:Lga/H;

    const-string v1, "VoxelPlayerController"

    invoke-static {v0, v1}, Lga/d;->u(Lga/H;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p0, LJAVARuntime/Component;

    if-eqz v0, :cond_2

    check-cast p0, LJAVARuntime/Component;

    invoke-virtual {p0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method public static B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LJAVARuntime/Component;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Lga/H;Lga/H;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public static b(Ljava/lang/Object;Lga/H;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "desiredType"
        }
    .end annotation

    if-eqz p1, :cond_4

    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-eq p1, v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, LJAVARuntime/Component;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, LJAVARuntime/Component;

    invoke-static {p1, p0}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v1, p0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static c(Lga/H;Lga/H;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slotType",
            "storedType"
        }
    .end annotation

    invoke-static {p1}, Lga/d;->o(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    sget-object p0, Lga/H;->ANY_COMPONENT:Lga/H;

    return-object p0
.end method

.method public static d(LJAVARuntime/Component;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "owner"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-virtual {p0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->j()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->k()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lga/H;)LJAVARuntime/Component;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "type"
        }
    .end annotation

    invoke-static {p0, p1}, Lga/d;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lga/H;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJAVARuntime/Component;

    :goto_0
    return-object p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lga/H;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lga/H;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/Component;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1, v2}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lga/H;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-static {p0}, Lga/d;->o(Lga/H;)Z

    move-result v0

    const-string v1, "Components"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lga/d;->j(Lga/H;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    const-class v0, LJAVARuntime/ClassCategory;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, LJAVARuntime/ClassCategory;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, LJAVARuntime/ClassCategory;->cat()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static h()Lga/H;
    .locals 5

    invoke-static {}, Lga/H;->values()[Lga/H;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lga/d;->o(Lga/H;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    return-object v0
.end method

.method public static i(Lga/H;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    if-ne p0, v0, :cond_1

    const-string p0, "Any Component"

    return-object p0

    :cond_1
    sget-object v0, Lga/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static j(Lga/H;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/H;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "LJAVARuntime/Component;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lga/d;->o(Lga/H;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lga/d;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    sget-object v2, Lga/d;->c:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JAVARuntime."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, LJAVARuntime/Component;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static k()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lga/H;->values()[Lga/H;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lga/d;->o(Lga/H;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lga/d;->g(Lga/H;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static l(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lga/H;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {}, Lga/H;->values()[Lga/H;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4}, Lga/d;->o(Lga/H;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lga/d;->g(Lga/H;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static m(LJAVARuntime/Component;)Lga/H;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lga/H;->ANY_COMPONENT:Lga/H;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_2

    sget-object v0, Lga/d;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lga/H;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lga/H;->ANY_COMPONENT:Lga/H;

    return-object p0
.end method

.method public static n(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static o(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    if-eq p0, v0, :cond_0

    sget-object v0, Lga/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static p(LJAVARuntime/Component;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "[Pick first]"

    return-object p0

    :cond_0
    invoke-virtual {p0}, LJAVARuntime/Component;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, LJAVARuntime/Component;->getTittle()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public static q()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lga/H;->values()[Lga/H;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4}, Lga/d;->o(Lga/H;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lga/d;->j(Lga/H;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lga/d;->i(Lga/H;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lz3/a;

    invoke-direct {v0}, Lz3/a;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static r()Ljava/lang/String;
    .locals 2

    const-string v0, ", "

    invoke-static {}, Lga/d;->q()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Lga/H;LJAVARuntime/Component;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lga/H;->ANY_COMPONENT:Lga/H;

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lga/d;->j(Lga/H;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public static t(Lga/H;Lga/H;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lga/H;->ANY_COMPONENT:Lga/H;

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Lga/H;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "runtimeSimpleName"
        }
    .end annotation

    sget-object v0, Lga/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lga/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lga/H;Ljava/lang/String;)LJAVARuntime/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputDefault",
            "owner",
            "ownerComponent",
            "slotType",
            "providerValue"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->type:Lga/H;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p3, v1}, Lga/d;->c(Lga/H;Lga/H;)Lga/H;

    move-result-object p3

    if-eqz p0, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    instance-of v2, v1, LJAVARuntime/Component;

    if-eqz v2, :cond_1

    check-cast v1, LJAVARuntime/Component;

    invoke-static {p3, v1}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->jsonData:Ljava/lang/String;

    invoke-static {v1, p1}, Lga/d;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;

    move-result-object v1

    invoke-static {p3, v1}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    return-object v1

    :cond_2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->a:Ljava/lang/Object;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeInputDefault;->stringValue:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, ""

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "[Pick first]"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lga/d;->z(Lga/H;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Owner"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p2}, Lga/d;->B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LJAVARuntime/Component;

    move-result-object p0

    invoke-static {p3, p0}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v0, p0

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    invoke-static {p1, p3}, Lga/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lga/H;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p4, p1, p2, p3}, Lga/d;->w(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lga/H;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Lga/H;)LJAVARuntime/Component;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "providerValue",
            "owner",
            "ownerComponent",
            "slotType"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lga/d;->c(Lga/H;Lga/H;)Lga/H;

    move-result-object p3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "[Pick first]"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lga/d;->z(Lga/H;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Owner"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lga/d;->B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LJAVARuntime/Component;

    move-result-object p0

    invoke-static {p3, p0}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0

    :cond_3
    invoke-static {p0, p1}, Lga/d;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;

    move-result-object p0

    invoke-static {p3, p0}, Lga/d;->s(Lga/H;LJAVARuntime/Component;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v0, p0

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    invoke-static {p1, p3}, Lga/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lga/H;)LJAVARuntime/Component;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LJAVARuntime/Component;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referenceJson",
            "owner"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->g()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->g()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static y(Lga/H;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-static {p0}, Lga/d;->o(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lga/d;->h()Lga/H;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static z(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lga/H;->ANY_COMPONENT:Lga/H;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
