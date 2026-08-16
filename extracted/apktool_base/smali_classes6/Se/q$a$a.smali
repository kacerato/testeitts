.class public final LSe/q$a$a;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LSe/q$f;

.field public final synthetic c:LSe/q$a;


# direct methods
.method public constructor <init>(LSe/q$a;LSe/q$f;)V
    .locals 0

    iput-object p1, p0, LSe/q$a$a;->c:LSe/q$a;

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p2, p0, LSe/q$a$a;->b:LSe/q$f;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    iget-object v0, p0, LSe/q$a$a;->b:LSe/q$f;

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object v0, p0, LSe/q$a$a;->b:LSe/q$f;

    iget-object v1, p0, LSe/q$a$a;->c:LSe/q$a;

    iget-object v1, v1, LSe/q$a;->b:LBe/J$c;

    invoke-virtual {v0, v1, p1}, LSe/q$f;->a(LBe/J$c;LBe/f;)V

    return-void
.end method
