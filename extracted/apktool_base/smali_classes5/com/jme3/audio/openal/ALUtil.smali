.class public final Lcom/jme3/audio/openal/ALUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkALError(Lcom/jme3/audio/openal/AL;)V
    .locals 3

    invoke-interface {p0}, Lcom/jme3/audio/openal/AL;->alGetError()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenAL Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/jme3/audio/openal/ALUtil;->getALErrorMessage(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getALErrorMessage(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Error Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "Out of Memory"

    goto :goto_0

    :pswitch_1
    const-string p0, "Invalid Operation"

    goto :goto_0

    :pswitch_2
    const-string p0, "Invalid Value"

    goto :goto_0

    :pswitch_3
    const-string p0, "Invalid Enum"

    goto :goto_0

    :pswitch_4
    const-string p0, "Invalid Name"

    goto :goto_0

    :cond_0
    const-string p0, "No Error"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa001
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
