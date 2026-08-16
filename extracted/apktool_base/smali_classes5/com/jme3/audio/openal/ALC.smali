.class public interface abstract Lcom/jme3/audio/openal/ALC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALC_ALL_ATTRIBUTES:I = 0x1003

.field public static final ALC_ALL_DEVICES_SPECIFIER:I = 0x1013

.field public static final ALC_ATTRIBUTES_SIZE:I = 0x1002

.field public static final ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER:I = 0x311

.field public static final ALC_CAPTURE_DEVICE_SPECIFIER:I = 0x310

.field public static final ALC_CAPTURE_SAMPLES:I = 0x312

.field public static final ALC_CONNECTED:I = 0x313

.field public static final ALC_DEFAULT_ALL_DEVICES_SPECIFIER:I = 0x1012

.field public static final ALC_DEFAULT_DEVICE_SPECIFIER:I = 0x1004

.field public static final ALC_DEVICE_SPECIFIER:I = 0x1005

.field public static final ALC_EXTENSIONS:I = 0x1006

.field public static final ALC_INVALID_CONTEXT:I = 0xa002

.field public static final ALC_INVALID_DEVICE:I = 0xa001

.field public static final ALC_INVALID_ENUM:I = 0xa003

.field public static final ALC_INVALID_VALUE:I = 0xa004

.field public static final ALC_MAJOR_VERSION:I = 0x1000

.field public static final ALC_MINOR_VERSION:I = 0x1001

.field public static final ALC_NO_ERROR:I = 0x0

.field public static final ALC_OUT_OF_MEMORY:I = 0xa005


# virtual methods
.method public abstract alcDevicePauseSOFT()V
.end method

.method public abstract alcDeviceResumeSOFT()V
.end method

.method public abstract alcGetInteger(ILjava/nio/IntBuffer;I)V
.end method

.method public abstract alcGetString(I)Ljava/lang/String;
.end method

.method public abstract alcIsExtensionPresent(Ljava/lang/String;)Z
.end method

.method public abstract createALC()V
.end method

.method public abstract destroyALC()V
.end method

.method public abstract isCreated()Z
.end method
