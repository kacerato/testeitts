.class public final enum Lcom/android/tools/r8/graph/B2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum c:Lcom/android/tools/r8/graph/B2;

.field public static final enum d:Lcom/android/tools/r8/graph/B2;

.field public static final enum e:Lcom/android/tools/r8/graph/B2;

.field public static final enum f:Lcom/android/tools/r8/graph/B2;

.field public static final enum g:Lcom/android/tools/r8/graph/B2;

.field public static final enum h:Lcom/android/tools/r8/graph/B2;

.field public static final enum i:Lcom/android/tools/r8/graph/B2;

.field public static final enum j:Lcom/android/tools/r8/graph/B2;

.field public static final enum k:Lcom/android/tools/r8/graph/B2;

.field public static final enum l:Lcom/android/tools/r8/graph/B2;

.field public static final synthetic m:Z = true


# instance fields
.field public final b:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "STATIC_PUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->c:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "STATIC_GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->d:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INSTANCE_PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->e:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INSTANCE_GET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->f:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INVOKE_STATIC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->g:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INVOKE_INSTANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INVOKE_CONSTRUCTOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->i:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INVOKE_DIRECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->j:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INVOKE_INTERFACE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    new-instance v0, Lcom/android/tools/r8/graph/B2;

    const-string v1, "INVOKE_SUPER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/graph/B2;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/android/tools/r8/graph/B2;->l:Lcom/android/tools/r8/graph/B2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/android/tools/r8/graph/B2;->b:S

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Qz;Lcom/android/tools/r8/graph/h4;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/B2;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Qz;->a:I

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    .line 3
    iget p0, p0, Lcom/android/tools/r8/internal/Qz;->a:I

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MethodHandle tag is not supported: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/graph/B2;->i:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 7
    :pswitch_2
    sget-boolean v0, Lcom/android/tools/r8/graph/B2;->m:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 9
    const-string v2, "<init>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 11
    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/h4;->f(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    if-ne p0, p2, :cond_4

    .line 14
    sget-object p0, Lcom/android/tools/r8/graph/B2;->j:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 15
    :cond_4
    sget-object p0, Lcom/android/tools/r8/graph/B2;->l:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 16
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/graph/B2;->g:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 17
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 18
    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/graph/B2;->c:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 19
    :pswitch_6
    sget-object p0, Lcom/android/tools/r8/graph/B2;->e:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 20
    :pswitch_7
    sget-object p0, Lcom/android/tools/r8/graph/B2;->d:Lcom/android/tools/r8/graph/B2;

    return-object p0

    .line 21
    :pswitch_8
    sget-object p0, Lcom/android/tools/r8/graph/B2;->f:Lcom/android/tools/r8/graph/B2;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final a()Z
    .locals 1

    .line 22
    sget-object v0, Lcom/android/tools/r8/graph/B2;->c:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/android/tools/r8/graph/B2;->d:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lcom/android/tools/r8/graph/B2;->e:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    sget-object v0, Lcom/android/tools/r8/graph/B2;->f:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/B2;->j:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/B2;->g:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/tools/r8/graph/B2;->h:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/graph/B2;->k:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/tools/r8/graph/B2;->l:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/tools/r8/graph/B2;->i:Lcom/android/tools/r8/graph/B2;

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/kK;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/graph/B2;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion to invoke type with unexpected method handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
