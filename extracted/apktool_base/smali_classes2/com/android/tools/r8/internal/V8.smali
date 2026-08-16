.class public Lcom/android/tools/r8/internal/V8;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/V8$a;
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/V8$a;

.field public final d:Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/V8;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/V8;->c:Lcom/android/tools/r8/internal/V8$a;

    iput-object p2, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)I
    .locals 5

    .line 24
    sget-object v0, Lcom/android/tools/r8/internal/U8;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 25
    :goto_0
    sget-object v3, Lcom/android/tools/r8/internal/U8;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_7

    if-eq v3, v1, :cond_6

    if-eq v3, v0, :cond_5

    const/4 v0, 0x4

    if-eq v3, v0, :cond_4

    const/4 v0, 0x5

    if-ne v3, v0, :cond_3

    add-int/lit8 p1, p1, 0x70

    return p1

    .line 26
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CfArithmeticBinop has unknown opcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 p1, p1, 0x6c

    return p1

    :cond_5
    add-int/lit8 p1, p1, 0x68

    return p1

    :cond_6
    add-int/lit8 p1, p1, 0x64

    return p1

    :cond_7
    add-int/lit8 p1, p1, 0x60

    return p1
.end method

.method public static a(I)Lcom/android/tools/r8/internal/V8;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong ASM opcode for CfArithmeticBinop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 5
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 6
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 7
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 8
    :pswitch_4
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->e:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 9
    :pswitch_5
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->e:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 10
    :pswitch_6
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->e:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 11
    :pswitch_7
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->e:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 12
    :pswitch_8
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->d:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 13
    :pswitch_9
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->d:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 14
    :pswitch_a
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->d:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 15
    :pswitch_b
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->d:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 16
    :pswitch_c
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 17
    :pswitch_d
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 18
    :pswitch_e
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 19
    :pswitch_f
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 20
    :pswitch_10
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 21
    :pswitch_11
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 22
    :pswitch_12
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 23
    :pswitch_13
    new-instance p0, Lcom/android/tools/r8/internal/V8;

    sget-object v0, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_13
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


# virtual methods
.method public B()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->c:Lcom/android/tools/r8/internal/V8$a;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/V8;->a(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)I

    move-result v0

    return v0
.end method

.method public V()Lcom/android/tools/r8/internal/V8$a;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->c:Lcom/android/tools/r8/internal/V8$a;

    return-object v0
.end method

.method public W()Lcom/android/tools/r8/internal/T10;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/V8;->B()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 27
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/V8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 3

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/internal/ob;->a:I

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 33
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    .line 34
    sget-object v1, Lcom/android/tools/r8/internal/U8;->a:[I

    iget-object v2, p0, Lcom/android/tools/r8/internal/V8;->c:Lcom/android/tools/r8/internal/V8$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->k(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 36
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/V8;->c:Lcom/android/tools/r8/internal/V8$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CfArithmeticBinop has unknown opcode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->e(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->g(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->p(Lcom/android/tools/r8/internal/T10;III)V

    return-void

    .line 40
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1, v1, p2, v0, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;III)V

    return-void
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
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->d:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V8;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v1, Lcom/android/tools/r8/internal/V8$a;->e:Lcom/android/tools/r8/internal/V8$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/internal/V8$a;->f:Lcom/android/tools/r8/internal/V8$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
