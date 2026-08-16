.class public interface abstract Lcom/jme3/audio/openal/EFX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALC_EFX_MAJOR_VERSION:I = 0x20001

.field public static final ALC_EFX_MINOR_VERSION:I = 0x20002

.field public static final ALC_EXT_EFX_NAME:Ljava/lang/String; = "ALC_EXT_EFX"

.field public static final ALC_MAX_AUXILIARY_SENDS:I = 0x20003

.field public static final AL_AUXILIARY_SEND_FILTER:I = 0x20006

.field public static final AL_BANDPASS_GAIN:I = 0x1

.field public static final AL_BANDPASS_GAINHF:I = 0x3

.field public static final AL_BANDPASS_GAINLF:I = 0x2

.field public static final AL_DIRECT_FILTER:I = 0x20005

.field public static final AL_DIRECT_FILTER_GAINHF_AUTO:I = 0x2000a

.field public static final AL_EFFECTSLOT_EFFECT:I = 0x1

.field public static final AL_EFFECT_REVERB:I = 0x1

.field public static final AL_EFFECT_TYPE:I = 0x8001

.field public static final AL_FILTER_BANDPASS:I = 0x3

.field public static final AL_FILTER_HIGHPASS:I = 0x2

.field public static final AL_FILTER_LOWPASS:I = 0x1

.field public static final AL_FILTER_NULL:I = 0x0

.field public static final AL_FILTER_TYPE:I = 0x8001

.field public static final AL_HIGHPASS_GAIN:I = 0x1

.field public static final AL_HIGHPASS_GAINLF:I = 0x2

.field public static final AL_LOWPASS_GAIN:I = 0x1

.field public static final AL_LOWPASS_GAINHF:I = 0x2

.field public static final AL_REVERB_AIR_ABSORPTION_GAINHF:I = 0xb

.field public static final AL_REVERB_DECAY_HFLIMIT:I = 0xd

.field public static final AL_REVERB_DECAY_HFRATIO:I = 0x6

.field public static final AL_REVERB_DECAY_TIME:I = 0x5

.field public static final AL_REVERB_DENSITY:I = 0x1

.field public static final AL_REVERB_DIFFUSION:I = 0x2

.field public static final AL_REVERB_GAIN:I = 0x3

.field public static final AL_REVERB_GAINHF:I = 0x4

.field public static final AL_REVERB_LATE_REVERB_DELAY:I = 0xa

.field public static final AL_REVERB_LATE_REVERB_GAIN:I = 0x9

.field public static final AL_REVERB_REFLECTIONS_DELAY:I = 0x8

.field public static final AL_REVERB_REFLECTIONS_GAIN:I = 0x7

.field public static final AL_REVERB_ROOM_ROLLOFF_FACTOR:I = 0xc


# virtual methods
.method public abstract alAuxiliaryEffectSloti(III)V
.end method

.method public abstract alDeleteAuxiliaryEffectSlots(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alDeleteEffects(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alDeleteFilters(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alEffectf(IIF)V
.end method

.method public abstract alEffecti(III)V
.end method

.method public abstract alFilterf(IIF)V
.end method

.method public abstract alFilteri(III)V
.end method

.method public abstract alGenAuxiliaryEffectSlots(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alGenEffects(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alGenFilters(ILjava/nio/IntBuffer;)V
.end method
