.class public Lcom/android/tools/r8/internal/yz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xz;

.field public b:C

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:[C

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/internal/xz<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 25
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->d()V

    .line 29
    :goto_0
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->d()V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v2, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/xz;->a(C)V

    const/16 v0, 0x28

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 35
    :goto_1
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v1, 0x4a

    const/16 v2, 0x49

    const/16 v3, 0x5a

    const/16 v4, 0x53

    const/16 v5, 0x46

    const/16 v6, 0x29

    if-eq v0, v6, :cond_3

    if-lez v0, :cond_3

    .line 36
    sget-object v6, Lcom/android/tools/r8/internal/xz$a;->d:Lcom/android/tools/r8/internal/xz$a;

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 37
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    .line 38
    :cond_2
    :pswitch_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    goto :goto_1

    .line 40
    :cond_3
    iget-object v7, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v7, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 41
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 42
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v6, 0x56

    if-eq v0, v6, :cond_5

    .line 43
    sget-object v6, Lcom/android/tools/r8/internal/xz$a;->d:Lcom/android/tools/r8/internal/xz$a;

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_1

    .line 44
    invoke-virtual {p0, v6}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_2

    .line 45
    :cond_4
    :pswitch_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 46
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    goto :goto_2

    .line 47
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 49
    :goto_2
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_a

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-char v2, p0, Lcom/android/tools/r8/internal/yz;->b:C

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 52
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v2, 0x54

    if-ne v0, v2, :cond_9

    .line 53
    iget-object v3, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v3, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->b()V

    .line 56
    sget-boolean v0, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/xz;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-char v2, p0, Lcom/android/tools/r8/internal/yz;->b:C

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/xz;->a(C)V

    const/16 v0, 0x3b

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->a(C)V

    goto :goto_4

    .line 60
    :cond_9
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->d:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->a(Lcom/android/tools/r8/internal/xz$a;)V

    .line 61
    :goto_4
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-eq v0, v1, :cond_6

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(C)V
    .locals 3

    .line 132
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 133
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-ne v0, p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/tools/r8/internal/yz;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/yz;->a(ILjava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/yz;->f:I

    const-string v0, "Unexpected end of signature"

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/yz;->a(ILjava/lang/String;)V

    throw v1
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    .line 137
    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/reflect/GenericSignatureFormatError;

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    .line 139
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at position "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/android/tools/r8/internal/xz$a;)V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/xz;->a(C)V

    const/16 v0, 0x4c

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->b()V

    .line 66
    sget-boolean v1, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 67
    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->b()V

    .line 71
    sget-boolean v1, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/android/tools/r8/internal/xz;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/xz$a;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v1, 0x3c

    const/16 v2, 0x3e

    const/16 v3, 0x2d

    const/16 v4, 0x2b

    const/16 v5, 0x2a

    if-ne v0, v1, :cond_b

    .line 75
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 77
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-ne v0, v5, :cond_4

    .line 78
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_5

    .line 80
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 82
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_6

    .line 83
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 84
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 85
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    .line 86
    :cond_6
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    .line 87
    :goto_1
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-eq v0, v2, :cond_a

    if-lez v0, :cond_a

    if-ne v0, v5, :cond_7

    .line 88
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    goto :goto_1

    :cond_7
    if-ne v0, v4, :cond_8

    .line 90
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 91
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 92
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    :cond_8
    if-ne v0, v3, :cond_9

    .line 93
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 95
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    .line 96
    :cond_9
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    .line 97
    :cond_a
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 99
    :cond_b
    :goto_2
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_15

    .line 100
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 101
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 102
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->b()V

    .line 103
    sget-boolean v0, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 104
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v6}, Lcom/android/tools/r8/internal/xz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 105
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-ne v0, v1, :cond_b

    .line 106
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 107
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 108
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-ne v0, v5, :cond_e

    .line 109
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 110
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    goto :goto_4

    :cond_e
    if-ne v0, v4, :cond_f

    .line 111
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 113
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_4

    :cond_f
    if-ne v0, v3, :cond_10

    .line 114
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 115
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 116
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_4

    .line 117
    :cond_10
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    .line 118
    :goto_4
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-eq v0, v2, :cond_14

    if-lez v0, :cond_14

    if-ne v0, v5, :cond_11

    .line 119
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 120
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    goto :goto_4

    :cond_11
    if-ne v0, v4, :cond_12

    .line 121
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 122
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 123
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_4

    :cond_12
    if-ne v0, v3, :cond_13

    .line 124
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 125
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 126
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_4

    .line 127
    :cond_13
    sget-object v0, Lcom/android/tools/r8/internal/xz$a;->c:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_4

    .line 128
    :cond_14
    iget-object v6, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v6, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/yz;->a(C)V

    goto/16 :goto_2

    .line 130
    :cond_15
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    const/16 p1, 0x3b

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yz;->a(C)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/xz;->b()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/yz;->f:I

    .line 5
    iput-char p1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 8
    iget-char p1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->d()V

    .line 12
    :goto_0
    iget-char p1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 16
    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/xz$a;->b:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yz;->a(Lcom/android/tools/r8/internal/xz$a;)V

    .line 17
    :goto_1
    iget-char p1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-lez p1, :cond_2

    .line 18
    sget-object p1, Lcom/android/tools/r8/internal/xz$a;->b:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yz;->a(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/xz;->a()V
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 20
    :goto_2
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error parsing class signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 23
    throw v0

    .line 24
    :goto_3
    throw p1
.end method

.method public final b()V
    .locals 8

    .line 31
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/tools/r8/internal/yz;->f:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    iget-char v2, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/4 v3, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-eq v2, v4, :cond_6

    const/16 v6, 0x2f

    if-eq v2, v6, :cond_6

    packed-switch v2, :pswitch_data_0

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    .line 36
    sget-boolean v2, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/yz;->f:I

    aget-char v2, v1, v2

    const/16 v7, 0x61

    if-lt v2, v7, :cond_2

    const/16 v7, 0x7a

    if-le v2, v7, :cond_4

    :cond_2
    const/16 v7, 0x41

    if-lt v2, v7, :cond_3

    const/16 v7, 0x5a

    if-le v2, v7, :cond_4

    :cond_3
    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_5

    packed-switch v2, :pswitch_data_1

    .line 38
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    iget v2, p0, Lcom/android/tools/r8/internal/yz;->f:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/tools/r8/internal/yz;->f:I

    .line 40
    array-length v7, v1

    if-ne v2, v7, :cond_1

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    .line 42
    iput-char v3, p0, Lcom/android/tools/r8/internal/yz;->b:C

    .line 43
    iput-boolean v5, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    return-void

    .line 44
    :cond_5
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    return-void

    .line 46
    :cond_6
    :pswitch_1
    iput-char v3, p0, Lcom/android/tools/r8/internal/yz;->b:C

    .line 47
    iput-boolean v5, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    .line 48
    iget v0, p0, Lcom/android/tools/r8/internal/yz;->f:I

    const-string v2, "Unexpected"

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/yz;->a(ILjava/lang/String;)V

    throw v1

    .line 49
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/yz;->f:I

    const-string v2, "Unexpected end of signature"

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/yz;->a(ILjava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/android/tools/r8/internal/xz$a;)V
    .locals 2

    .line 15
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 18
    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    return-void

    .line 20
    :cond_0
    :pswitch_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    return-void

    .line 22
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/yz;->f:I

    const-string v0, "Expected L, [ or T"

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/yz;->a(ILjava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/yz;->a(C)V

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->b()V

    .line 26
    sget-boolean p1, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/xz;->a(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/xz;->a(C)V

    const/16 p1, 0x3b

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yz;->a(C)V

    return-void

    .line 30
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yz;->a(Lcom/android/tools/r8/internal/xz$a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/xz;->b()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/yz;->f:I

    .line 5
    iput-char p1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 8
    sget-object p1, Lcom/android/tools/r8/internal/xz$a;->d:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/xz;->a()V
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error parsing field signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 13
    throw v0

    .line 14
    :goto_1
    throw p1
.end method

.method public final c()V
    .locals 4

    .line 15
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    if-nez v0, :cond_3

    .line 16
    sget-boolean v0, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/yz;->f:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 18
    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    add-int/2addr v0, v3

    .line 19
    iput v0, p0, Lcom/android/tools/r8/internal/yz;->f:I

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 20
    iput-char v0, p0, Lcom/android/tools/r8/internal/yz;->b:C

    .line 21
    iput-boolean v3, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    return-void

    .line 22
    :cond_3
    iget v0, p0, Lcom/android/tools/r8/internal/yz;->f:I

    const-string v1, "Unexpected end of signature"

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/yz;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/xz;->b()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/yz;->e:[C

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/yz;->d:Z

    .line 4
    iput p1, p0, Lcom/android/tools/r8/internal/yz;->f:I

    .line 5
    iput-char p1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->a()V

    .line 9
    iget-object p1, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/xz;->a()V
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error parsing method signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 13
    throw v0

    .line 14
    :goto_1
    throw p1
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->b()V

    sget-boolean v0, Lcom/android/tools/r8/internal/yz;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yz;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/xz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    iget-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/xz;->a(C)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/yz;->a(C)V

    iget-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x54

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/xz$a;->d:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    :cond_3
    :goto_1
    iget-char v1, p0, Lcom/android/tools/r8/internal/yz;->b:C

    if-ne v1, v0, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/yz;->a:Lcom/android/tools/r8/internal/xz;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/xz;->a(C)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yz;->c()V

    sget-object v1, Lcom/android/tools/r8/internal/xz$a;->d:Lcom/android/tools/r8/internal/xz$a;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/yz;->b(Lcom/android/tools/r8/internal/xz$a;)V

    goto :goto_1

    :cond_4
    return-void
.end method
