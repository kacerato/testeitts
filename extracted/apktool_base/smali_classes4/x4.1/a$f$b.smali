.class public Lx4/a$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG7/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx4/a$f;-><init>(Lx4/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx4/a$e;

.field public final synthetic b:Lx4/a$f;


# direct methods
.method public constructor <init>(Lx4/a$f;Lx4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx4/a$f$b;->b:Lx4/a$f;

    iput-object p2, p0, Lx4/a$f$b;->a:Lx4/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lx4/a$f$b;->a:Lx4/a$e;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, p1, v2}, LNc/b;->E(FFF)F

    move-result p1

    invoke-static {v0, p1}, Lx4/a$e;->h(Lx4/a$e;F)F

    return-void
.end method

.method public getValue()F
    .locals 1

    iget-object v0, p0, Lx4/a$f$b;->a:Lx4/a$e;

    invoke-static {v0}, Lx4/a$e;->g(Lx4/a$e;)F

    move-result v0

    return v0
.end method
