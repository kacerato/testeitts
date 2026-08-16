.class public LK5/a;
.super LJ5/b;
.source "SourceFile"


# static fields
.field public static h:Z = false


# instance fields
.field public f:I

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, LK5/a;->h:Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJ5/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LK5/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic m(LK5/a;)I
    .locals 0

    iget p0, p0, LK5/a;->f:I

    return p0
.end method

.method public static synthetic n(LK5/a;I)I
    .locals 1

    iget v0, p0, LK5/a;->f:I

    add-int/2addr v0, p1

    iput v0, p0, LK5/a;->f:I

    return v0
.end method

.method public static synthetic o(LK5/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, LK5/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public g()V
    .locals 1

    invoke-super {p0}, LJ5/b;->g()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CACHING_MATERIALS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LJ5/b;->j(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {p0, v0}, LJ5/b;->k(Ljava/lang/String;)V

    sget-boolean v0, LK5/a;->h:Z

    if-nez v0, :cond_0

    new-instance v0, LK5/a$a;

    invoke-direct {v0, p0}, LK5/a$a;-><init>(LK5/a;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, LK5/a$b;

    invoke-direct {v0, p0}, LK5/a$b;-><init>(LK5/a;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
