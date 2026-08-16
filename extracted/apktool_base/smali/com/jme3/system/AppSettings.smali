.class public final Lcom/jme3/system/AppSettings;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANDROID_MEDIAPLAYER:Ljava/lang/String; = "MediaPlayer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANDROID_OPENAL_SOFT:Ljava/lang/String; = "OpenAL_SOFT"

.field public static final JOAL:Ljava/lang/String; = "JOAL"

.field public static final JOGL_OPENGL_BACKWARD_COMPATIBLE:Ljava/lang/String; = "JOGL_OPENGL_BACKWARD_COMPATIBLE"

.field public static final JOGL_OPENGL_FORWARD_COMPATIBLE:Ljava/lang/String; = "JOGL_OPENGL_FORWARD_COMPATIBLE"

.field public static final JOYSTICKS_LEGACY_MAPPER:Ljava/lang/String; = "JOYSTICKS_LEGACY_MAPPER"

.field public static final JOYSTICKS_RAW_MAPPER:Ljava/lang/String; = "JOYSTICKS_RAW_MAPPER"

.field public static final JOYSTICKS_XBOX_LEGACY_MAPPER:Ljava/lang/String; = "JOYSTICKS_XBOX_LEGACY_MAPPER"

.field public static final JOYSTICKS_XBOX_MAPPER:Ljava/lang/String; = "JOYSTICKS_XBOX_MAPPER"

.field public static final JOYSTICKS_XBOX_WITH_FALLBACK_MAPPER:Ljava/lang/String; = "JOYSTICKS_XBOX_WITH_FALLBACK_MAPPER"

.field public static final LWJGL_OPENAL:Ljava/lang/String; = "LWJGL"

.field public static final LWJGL_OPENGL2:Ljava/lang/String; = "LWJGL-OpenGL2"

.field public static final LWJGL_OPENGL3:Ljava/lang/String; = "LWJGL-OpenGL3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LWJGL_OPENGL30:Ljava/lang/String; = "LWJGL-OpenGL30"

.field public static final LWJGL_OPENGL31:Ljava/lang/String; = "LWJGL-OpenGL31"

.field public static final LWJGL_OPENGL32:Ljava/lang/String; = "LWJGL-OpenGL3"

.field public static final LWJGL_OPENGL33:Ljava/lang/String; = "LWJGL-OpenGL33"

.field public static final LWJGL_OPENGL4:Ljava/lang/String; = "LWJGL-OpenGL4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LWJGL_OPENGL40:Ljava/lang/String; = "LWJGL-OpenGL4"

.field public static final LWJGL_OPENGL41:Ljava/lang/String; = "LWJGL-OpenGL41"

.field public static final LWJGL_OPENGL42:Ljava/lang/String; = "LWJGL-OpenGL42"

.field public static final LWJGL_OPENGL43:Ljava/lang/String; = "LWJGL-OpenGL43"

.field public static final LWJGL_OPENGL44:Ljava/lang/String; = "LWJGL-OpenGL44"

.field public static final LWJGL_OPENGL45:Ljava/lang/String; = "LWJGL-OpenGL45"

.field private static final defaults:Lcom/jme3/system/AppSettings;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/jme3/system/AppSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/AppSettings;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/system/AppSettings;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    sput-object v0, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    const-string v1, "Display"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "CenterWindow"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x280

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Width"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Height"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WindowWidth"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "WindowHeight"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BitsPerPixel"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Frequency"

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "DepthBits"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "StencilBits"

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Samples"

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "Fullscreen"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Title"

    sget-object v5, Lcom/jme3/system/JmeVersion;->FULL_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Renderer"

    const-string v5, "LWJGL-OpenGL3"

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "AudioRenderer"

    const-string v5, "LWJGL"

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "DisableJoysticks"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "UseInput"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "VSync"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FrameRate"

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "SettingsDialogImage"

    const-string v5, "/com/jme3/app/Monkey.png"

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "MinHeight"

    invoke-virtual {v0, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "MinWidth"

    invoke-virtual {v0, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GammaCorrection"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Resizable"

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "SwapBuffers"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OpenCL"

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/jme3/opencl/DefaultPlatformChooser;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OpenCLPlatformChooser"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UseRetinaFrameBuffer"

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WindowYPosition"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WindowXPosition"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X11PlatformPreferred"

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JoysticksMapper"

    const-string v2, "JOYSTICKS_XBOX_MAPPER"

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "JoysticksTriggerToButtonThreshold"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x38d1b717    # 1.0E-4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "JoysticksAxisJitterThreshold"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SDLGameControllerDBResourcePath"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static printPreferences(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preferences for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    aget-object v4, v1, v3

    const-string v5, "[Value Not Found]"

    invoke-virtual {v0, v4, v5}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n * "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/jme3/system/AppSettings;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v0, Lcom/jme3/system/AppSettings;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "No Preferences found under key: {0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/jme3/system/AppSettings;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getAlphaBits()I
    .locals 1

    const-string v0, "AlphaBits"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioRenderer()Ljava/lang/String;
    .locals 1

    const-string v0, "AudioRenderer"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitsPerPixel()I
    .locals 1

    const-string v0, "BitsPerPixel"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getCenterWindow()Z
    .locals 1

    const-string v0, "CenterWindow"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDepthBits()I
    .locals 1

    const-string v0, "DepthBits"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDisplay()I
    .locals 1

    const-string v0, "Display"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/system/AppSettings;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getFrameRate()I
    .locals 1

    const-string v0, "FrameRate"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFrequency()I
    .locals 1

    const-string v0, "Frequency"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "Height"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIcons()[Ljava/lang/Object;
    .locals 1

    const-string v0, "Icons"

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getJoysticksAxisJitterThreshold()F
    .locals 1

    const-string v0, "JoysticksAxisJitterThreshold"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getJoysticksMapper()Ljava/lang/String;
    .locals 1

    const-string v0, "JoysticksMapper"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJoysticksTriggerToButtonThreshold()F
    .locals 1

    const-string v0, "JoysticksTriggerToButtonThreshold"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    const-string v0, "MinHeight"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    const-string v0, "MinWidth"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOpenCLPlatformChooser()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenCLPlatformChooser"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 1

    const-string v0, "Renderer"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDLGameControllerDBResourcePath()Ljava/lang/String;
    .locals 1

    const-string v0, "SDLGameControllerDBResourcePath"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSamples()I
    .locals 1

    const-string v0, "Samples"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSettingsDialogImage()Ljava/lang/String;
    .locals 1

    const-string v0, "SettingsDialogImage"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStencilBits()I
    .locals 1

    const-string v0, "StencilBits"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Title"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "Width"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWindowHeight()I
    .locals 2

    const-string v0, "WindowHeight"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWindowWidth()I
    .locals 2

    const-string v0, "WindowWidth"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWindowXPosition()I
    .locals 1

    const-string v0, "WindowXPosition"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWindowYPosition()I
    .locals 1

    const-string v0, "WindowYPosition"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEmulateKeyboard()Z
    .locals 1

    const-string v0, "TouchEmulateKeyboard"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmulateMouse()Z
    .locals 1

    const-string v0, "TouchEmulateMouse"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmulateMouseFlipX()Z
    .locals 1

    const-string v0, "TouchEmulateMouseFlipX"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmulateMouseFlipY()Z
    .locals 1

    const-string v0, "TouchEmulateMouseFlipY"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    const-string v0, "Fullscreen"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGammaCorrection()Z
    .locals 1

    const-string v0, "GammaCorrection"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGraphicsDebug()Z
    .locals 1

    const-string v0, "GraphicsDebug"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGraphicsTiming()Z
    .locals 1

    const-string v0, "GraphicsTiming"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGraphicsTrace()Z
    .locals 1

    const-string v0, "GraphicsTrace"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOpenCLSupport()Z
    .locals 1

    const-string v0, "OpenCL"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isResizable()Z
    .locals 1

    const-string v0, "Resizable"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSwapBuffers()Z
    .locals 1

    const-string v0, "SwapBuffers"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUseRetinaFrameBuffer()Z
    .locals 1

    const-string v0, "UseRetinaFrameBuffer"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVSync()Z
    .locals 1

    const-string v0, "VSync"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isX11PlatformPreferred()Z
    .locals 1

    const-string v0, "X11PlatformPreferred"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    const-string v2, "(int)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 11
    :cond_1
    const-string v2, "(string)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    const-string v2, "(bool)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 16
    :cond_3
    const-string v2, "(float)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/jme3/system/AppSettings;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 19
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 20
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->keys()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 22
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_4

    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x42

    const/4 v7, 0x2

    if-eq v5, v6, :cond_3

    const/16 v6, 0x46

    if-eq v5, v6, :cond_2

    const/16 v6, 0x49

    if-eq v5, v6, :cond_1

    const/16 v6, 0x53

    if-ne v5, v6, :cond_0

    .line 25
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined setting type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v2}, Ljava/util/prefs/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Ljava/util/prefs/Preferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v2}, Ljava/util/prefs/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_4
    sget-object v5, Lcom/jme3/system/AppSettings;->defaults:Lcom/jme3/system/AppSettings;

    invoke-virtual {v5, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 32
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 33
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/util/prefs/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    :cond_5
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 35
    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 36
    :cond_6
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    .line 37
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/util/prefs/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public mergeFrom(Lcom/jme3/system/AppSettings;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putInteger(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 5
    const-string v4, "(int)"

    goto :goto_1

    .line 6
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 7
    const-string v4, "(string)"

    goto :goto_1

    .line 8
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 9
    const-string v4, "(bool)"

    goto :goto_1

    .line 10
    :cond_3
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 11
    const-string v4, "(float)"

    .line 12
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_4
    const-string v1, "jME3 AppSettings"

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 14
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->clear()V

    .line 16
    invoke-virtual {p0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/prefs/Preferences;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 20
    :cond_1
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "F_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/prefs/Preferences;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 22
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/prefs/Preferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_3
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/prefs/Preferences;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 26
    :cond_4
    invoke-virtual {p1}, Ljava/util/prefs/Preferences;->sync()V

    return-void
.end method

.method public setAlphaBits(I)V
    .locals 1

    const-string v0, "AlphaBits"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setAudioRenderer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AudioRenderer"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBitsPerPixel(I)V
    .locals 1

    const-string v0, "BitsPerPixel"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setCenterWindow(Z)V
    .locals 1

    const-string v0, "CenterWindow"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setCustomRenderer(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/system/JmeContext;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Renderer"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDepthBits(I)V
    .locals 1

    const-string v0, "DepthBits"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setDisplay(I)V
    .locals 1

    const-string v0, "Display"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setEmulateKeyboard(Z)V
    .locals 1

    const-string v0, "TouchEmulateKeyboard"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEmulateMouse(Z)V
    .locals 1

    const-string v0, "TouchEmulateMouse"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEmulateMouseFlipAxis(ZZ)V
    .locals 1

    const-string v0, "TouchEmulateMouseFlipX"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "TouchEmulateMouseFlipY"

    invoke-virtual {p0, p1, p2}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFrameRate(I)V
    .locals 1

    const-string v0, "FrameRate"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setFrequency(I)V
    .locals 1

    const-string v0, "Frequency"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 1

    const-string v0, "Fullscreen"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGammaCorrection(Z)V
    .locals 1

    const-string v0, "GammaCorrection"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGraphicsDebug(Z)V
    .locals 1

    const-string v0, "GraphicsDebug"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGraphicsTiming(Z)V
    .locals 1

    const-string v0, "GraphicsTiming"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGraphicsTrace(Z)V
    .locals 1

    const-string v0, "GraphicsTrace"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    const-string v0, "Height"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setIcons([Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Icons"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setJoysticksAxisJitterThreshold(F)V
    .locals 1

    const-string v0, "JoysticksAxisJitterThreshold"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setJoysticksMapper(Ljava/lang/String;)V
    .locals 1

    const-string v0, "JoysticksMapper"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setJoysticksTriggerToButtonThreshold(F)V
    .locals 1

    const-string v0, "JoysticksTriggerToButtonThreshold"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    const-string v0, "MinHeight"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setMinResolution(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/system/AppSettings;->setMinWidth(I)V

    invoke-virtual {p0, p2}, Lcom/jme3/system/AppSettings;->setMinHeight(I)V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    const-string v0, "MinWidth"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setOpenCLPlatformChooser(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/opencl/PlatformChooser;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpenCLPlatformChooser"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOpenCLSupport(Z)V
    .locals 1

    const-string v0, "OpenCL"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRenderer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Renderer"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setResizable(Z)V
    .locals 1

    const-string v0, "Resizable"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setResolution(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/system/AppSettings;->setWidth(I)V

    invoke-virtual {p0, p2}, Lcom/jme3/system/AppSettings;->setHeight(I)V

    return-void
.end method

.method public setSDLGameControllerDBResourcePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SDLGameControllerDBResourcePath"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSamples(I)V
    .locals 1

    const-string v0, "Samples"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setSettingsDialogImage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SettingsDialogImage"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStencilBits(I)V
    .locals 1

    const-string v0, "StencilBits"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setStereo3D(Z)V
    .locals 1

    const-string v0, "Stereo3D"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSwapBuffers(Z)V
    .locals 1

    const-string v0, "SwapBuffers"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Title"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseInput(Z)V
    .locals 1

    const-string v0, "UseInput"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUseJoysticks(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "DisableJoysticks"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUseRetinaFrameBuffer(Z)V
    .locals 1

    const-string v0, "UseRetinaFrameBuffer"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVSync(Z)V
    .locals 1

    const-string v0, "VSync"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    const-string v0, "Width"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setWindowSize(II)V
    .locals 1

    const-string v0, "WindowWidth"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    const-string p1, "WindowHeight"

    invoke-virtual {p0, p1, p2}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setWindowXPosition(I)V
    .locals 1

    const-string v0, "WindowXPosition"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setWindowYPosition(I)V
    .locals 1

    const-string v0, "WindowYPosition"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setX11PlatformPreferred(Z)V
    .locals 1

    const-string v0, "X11PlatformPreferred"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/system/AppSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public useInput()Z
    .locals 1

    const-string v0, "UseInput"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public useJoysticks()Z
    .locals 1

    const-string v0, "DisableJoysticks"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public useStereo3D()Z
    .locals 1

    const-string v0, "Stereo3D"

    invoke-virtual {p0, v0}, Lcom/jme3/system/AppSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
