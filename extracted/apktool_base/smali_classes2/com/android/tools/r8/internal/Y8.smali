.class public abstract Lcom/android/tools/r8/internal/Y8;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/YV;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/YV;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Y8;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/YV;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Y8;->c:Lcom/android/tools/r8/internal/YV;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->Q1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 5
    :pswitch_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->T1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 6
    :pswitch_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->R1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 7
    :pswitch_3
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 8
    :pswitch_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->U1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 9
    :pswitch_5
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->P1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 10
    :pswitch_6
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 11
    :pswitch_7
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
