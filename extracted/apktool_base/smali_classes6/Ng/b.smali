.class public final LNg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LNg/b$a;
    }
.end annotation


# static fields
.field public static final d:LTg/f;

.field public static final e:Ljava/lang/String; = ":status"

.field public static final f:Ljava/lang/String; = ":method"

.field public static final g:Ljava/lang/String; = ":path"

.field public static final h:Ljava/lang/String; = ":scheme"

.field public static final i:Ljava/lang/String; = ":authority"

.field public static final j:LTg/f;

.field public static final k:LTg/f;

.field public static final l:LTg/f;

.field public static final m:LTg/f;

.field public static final n:LTg/f;


# instance fields
.field public final a:LTg/f;

.field public final b:LTg/f;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LNg/b;->d:LTg/f;

    const-string v0, ":status"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LNg/b;->j:LTg/f;

    const-string v0, ":method"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LNg/b;->k:LTg/f;

    const-string v0, ":path"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LNg/b;->l:LTg/f;

    const-string v0, ":scheme"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LNg/b;->m:LTg/f;

    const-string v0, ":authority"

    invoke-static {v0}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object v0

    sput-object v0, LNg/b;->n:LTg/f;

    return-void
.end method

.method public constructor <init>(LTg/f;LTg/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LNg/b;->a:LTg/f;

    .line 5
    iput-object p2, p0, LNg/b;->b:LTg/f;

    .line 6
    invoke-virtual {p1}, LTg/f;->S()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, LTg/f;->S()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, LNg/b;->c:I

    return-void
.end method

.method public constructor <init>(LTg/f;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LNg/b;-><init>(LTg/f;LTg/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object p1

    invoke-static {p2}, LTg/f;->m(Ljava/lang/String;)LTg/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LNg/b;-><init>(LTg/f;LTg/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LNg/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LNg/b;

    iget-object v0, p0, LNg/b;->a:LTg/f;

    iget-object v2, p1, LNg/b;->a:LTg/f;

    invoke-virtual {v0, v2}, LTg/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LNg/b;->b:LTg/f;

    iget-object p1, p1, LNg/b;->b:LTg/f;

    invoke-virtual {v0, p1}, LTg/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LNg/b;->a:LTg/f;

    invoke-virtual {v0}, LTg/f;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LNg/b;->b:LTg/f;

    invoke-virtual {v0}, LTg/f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LNg/b;->a:LTg/f;

    invoke-virtual {v0}, LTg/f;->b0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LNg/b;->b:LTg/f;

    invoke-virtual {v1}, LTg/f;->b0()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, LGg/c;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
