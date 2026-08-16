.class public LSe/q$c;
.super LSe/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, LSe/q$f;-><init>()V

    iput-object p1, p0, LSe/q$c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public b(LBe/J$c;LBe/f;)LDe/c;
    .locals 2

    new-instance v0, LSe/q$d;

    iget-object v1, p0, LSe/q$c;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, LSe/q$d;-><init>(Ljava/lang/Runnable;LBe/f;)V

    invoke-virtual {p1, v0}, LBe/J$c;->b(Ljava/lang/Runnable;)LDe/c;

    move-result-object p1

    return-object p1
.end method
