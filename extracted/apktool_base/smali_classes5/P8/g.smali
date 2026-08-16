.class public LP8/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[LP8/h;

.field public static b:[LP8/l;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    invoke-static {}, LJAVARuntime/Color;->inspectorController()LP8/h;

    move-result-object v0

    invoke-static {}, LJAVARuntime/OutPFile;->inspectorController()LP8/h;

    move-result-object v1

    invoke-static {}, LJAVARuntime/Vector3;->inspectorController()LP8/h;

    move-result-object v2

    invoke-static {}, LJAVARuntime/Vector2;->inspectorController()LP8/h;

    move-result-object v3

    invoke-static {}, LJAVARuntime/FloatSlider;->inspectorController()LP8/h;

    move-result-object v4

    invoke-static {}, LJAVARuntime/IntSlider;->inspectorController()LP8/h;

    move-result-object v5

    invoke-static {}, LJAVARuntime/Texture;->inspectorController()LP8/h;

    move-result-object v6

    invoke-static {}, LJAVARuntime/Matcap;->inspectorController()LP8/h;

    move-result-object v7

    invoke-static {}, LJAVARuntime/Map2;->inspectorController()LP8/h;

    move-result-object v8

    invoke-static {}, LJAVARuntime/SpatialObject;->inspectorController()LP8/h;

    move-result-object v9

    invoke-static {}, LJAVARuntime/Component;->inspectorController()LP8/h;

    move-result-object v10

    invoke-static {}, LJAVARuntime/Point3;->inspectorController()LP8/h;

    move-result-object v11

    invoke-static {}, LJAVARuntime/Point2;->inspectorController()LP8/h;

    move-result-object v12

    invoke-static {}, LJAVARuntime/PropertiesButton;->inspectorController()LP8/h;

    move-result-object v13

    invoke-static {}, LJAVARuntime/ObjectFile;->inspectorController()LP8/h;

    move-result-object v14

    invoke-static {}, LJAVARuntime/MaterialFile;->inspectorController()LP8/h;

    move-result-object v15

    invoke-static {}, LJAVARuntime/WorldFile;->inspectorController()LP8/h;

    move-result-object v16

    invoke-static {}, LJAVARuntime/SoundFile;->inspectorController()LP8/h;

    move-result-object v17

    invoke-static {}, LJAVARuntime/VideoFile;->inspectorController()LP8/h;

    move-result-object v18

    invoke-static {}, LJAVARuntime/OutputVideoFile;->inspectorController()LP8/h;

    move-result-object v19

    invoke-static {}, LJAVARuntime/TextureFile;->inspectorController()LP8/h;

    move-result-object v20

    invoke-static {}, LJAVARuntime/VertexFile;->inspectorController()LP8/h;

    move-result-object v21

    invoke-static {}, LJAVARuntime/FontFile;->inspectorController()LP8/h;

    move-result-object v22

    invoke-static {}, LJAVARuntime/Curve;->inspectorController()LP8/h;

    move-result-object v23

    invoke-static {}, LJAVARuntime/ColorGradient;->inspectorController()LP8/h;

    move-result-object v24

    invoke-static {}, LJAVARuntime/ProjectFile;->inspectorController()LP8/h;

    move-result-object v25

    invoke-static {}, LJAVARuntime/AnimationFile;->inspectorController()LP8/h;

    move-result-object v26

    invoke-static {}, LJAVARuntime/AnimationMaskFile;->inspectorController()LP8/h;

    move-result-object v27

    filled-new-array/range {v0 .. v27}, [LP8/h;

    move-result-object v0

    sput-object v0, LP8/g;->a:[LP8/h;

    invoke-static {}, LJAVARuntime/Color;->genericInterface()LP8/l;

    move-result-object v1

    invoke-static {}, LJAVARuntime/OutPFile;->genericInterface()LP8/l;

    move-result-object v2

    invoke-static {}, LJAVARuntime/Vector3;->genericInterface()LP8/l;

    move-result-object v3

    invoke-static {}, LJAVARuntime/Vector2;->genericInterface()LP8/l;

    move-result-object v4

    invoke-static {}, LJAVARuntime/Texture;->genericInterface()LP8/l;

    move-result-object v5

    invoke-static {}, LJAVARuntime/Matcap;->genericInterface()LP8/l;

    move-result-object v6

    invoke-static {}, LJAVARuntime/ObjectFile;->genericInterface()LP8/l;

    move-result-object v7

    invoke-static {}, LJAVARuntime/MaterialFile;->genericInterface()LP8/l;

    move-result-object v8

    invoke-static {}, LJAVARuntime/WorldFile;->genericInterface()LP8/l;

    move-result-object v9

    invoke-static {}, LJAVARuntime/SoundFile;->genericInterface()LP8/l;

    move-result-object v10

    invoke-static {}, LJAVARuntime/VideoFile;->genericInterface()LP8/l;

    move-result-object v11

    invoke-static {}, LJAVARuntime/OutputVideoFile;->genericInterface()LP8/l;

    move-result-object v12

    invoke-static {}, LJAVARuntime/TextureFile;->genericInterface()LP8/l;

    move-result-object v13

    invoke-static {}, LJAVARuntime/VertexFile;->genericInterface()LP8/l;

    move-result-object v14

    invoke-static {}, LJAVARuntime/FontFile;->genericInterface()LP8/l;

    move-result-object v15

    invoke-static {}, LJAVARuntime/Curve;->genericInterface()LP8/l;

    move-result-object v16

    invoke-static {}, LJAVARuntime/ColorGradient;->genericInterface()LP8/l;

    move-result-object v17

    invoke-static {}, LJAVARuntime/ProjectFile;->genericInterface()LP8/l;

    move-result-object v18

    invoke-static {}, LJAVARuntime/AnimationFile;->genericInterface()LP8/l;

    move-result-object v19

    invoke-static {}, LJAVARuntime/AnimationMaskFile;->genericInterface()LP8/l;

    move-result-object v20

    filled-new-array/range {v1 .. v20}, [LP8/l;

    move-result-object v0

    sput-object v0, LP8/g;->b:[LP8/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()[LP8/h;
    .locals 1

    sget-object v0, LP8/g;->a:[LP8/h;

    return-object v0
.end method

.method public static b()[LP8/l;
    .locals 1

    sget-object v0, LP8/g;->b:[LP8/l;

    return-object v0
.end method
