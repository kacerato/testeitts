.class public LGk/a;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {p2}, LFk/S;->v(Ljava/lang/Object;)LFk/S;

    move-result-object p2

    :goto_0
    iput-object p2, p0, LGk/a;->c:Loh/g;

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid choice value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p2}, LGk/b;->z(Ljava/lang/Object;)LGk/b;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-static {p2}, LGk/c;->y(Ljava/lang/Object;)LGk/c;

    move-result-object p2

    goto :goto_0

    :goto_1
    iput p1, p0, LGk/a;->b:I

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-direct {p0, v0, p1}, LGk/a;-><init>(ILoh/g;)V

    return-void
.end method

.method public static A(LGk/c;)LGk/a;
    .locals 2

    new-instance v0, LGk/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LGk/a;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static B(LGk/b;)LGk/a;
    .locals 2

    new-instance v0, LGk/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LGk/a;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static u(LGk/b;)LGk/a;
    .locals 2

    new-instance v0, LGk/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LGk/a;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static v(LFk/S;)LGk/a;
    .locals 2

    new-instance v0, LGk/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LGk/a;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public static z(Ljava/lang/Object;)LGk/a;
    .locals 2

    instance-of v0, p0, LGk/a;

    if-eqz v0, :cond_0

    check-cast p0, LGk/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LGk/a;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LGk/a;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LGk/a;->b:I

    iget-object v2, p0, LGk/a;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LGk/a;->c:Loh/g;

    return-object v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, LGk/a;->b:I

    return v0
.end method
