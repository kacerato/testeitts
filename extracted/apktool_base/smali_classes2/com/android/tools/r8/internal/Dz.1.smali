.class public Lcom/android/tools/r8/internal/Dz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/Dz$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Dz;

.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Dz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Dz;

    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->t:Lcom/android/tools/r8/internal/Dz$a;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Dz;-><init>(Lcom/android/tools/r8/internal/Dz$a;)V

    sput-object v0, Lcom/android/tools/r8/internal/Dz;->b:Lcom/android/tools/r8/internal/Dz;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Dz$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dz;->a:Lcom/android/tools/r8/internal/Dz$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/Dz$a;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dz;->a:Lcom/android/tools/r8/internal/Dz$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/tools/r8/internal/Cz;->a:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Dz;->a()Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/android/tools/r8/internal/Dz;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Dz;->a()Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown edge kind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :goto_0
    :pswitch_0
    const-string v0, "kept for unknown reasons"

    return-object v0

    :pswitch_1
    const-string v0, "referenced from xml"

    return-object v0

    :pswitch_2
    const-string v0, "companion method for"

    return-object v0

    :pswitch_3
    const-string v0, "companion class for"

    return-object v0

    :pswitch_4
    const-string v0, "referenced by method handle"

    return-object v0

    :pswitch_5
    const-string v0, "defined in library method overridden by"

    return-object v0

    :pswitch_6
    const-string v0, "overriding method"

    return-object v0

    :pswitch_7
    const-string v0, "referenced in annotation"

    return-object v0

    :pswitch_8
    const-string v0, "reachable from"

    return-object v0

    :pswitch_9
    const-string v0, "reflected from"

    return-object v0

    :pswitch_a
    const-string v0, "referenced from"

    return-object v0

    :pswitch_b
    const-string v0, "annotated on"

    return-object v0

    :pswitch_c
    const-string v0, "invoked from lambda created in"

    return-object v0

    :pswitch_d
    const-string v0, "invoked from"

    return-object v0

    :pswitch_e
    const-string v0, "targeted by super from"

    return-object v0

    :pswitch_f
    const-string v0, "invoked via super from"

    return-object v0

    :pswitch_10
    const-string v0, "instantiated in"

    return-object v0

    :pswitch_11
    const-string v0, "satisfied with precondition"

    return-object v0

    :pswitch_12
    const-string v0, "referenced in keep rule"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/tools/r8/internal/Dz;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/Dz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Dz;->a:Lcom/android/tools/r8/internal/Dz$a;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dz;->a:Lcom/android/tools/r8/internal/Dz$a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dz;->a:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dz;->a:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{edge-type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
