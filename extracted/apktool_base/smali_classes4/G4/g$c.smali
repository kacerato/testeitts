.class public LG4/g$c;
.super LP8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LG4/g;->s1()LC5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LG4/g;


# direct methods
.method public constructor <init>(LG4/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LG4/g$c;->a:LG4/g;

    invoke-direct {p0}, LP8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "instance",
            "address"
        }
    .end annotation

    iget-object p1, p0, LG4/g$c;->a:LG4/g;

    invoke-static {p1}, LG4/g;->q1(LG4/g;)LG4/h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LG4/g$c;->a:LG4/g;

    invoke-static {p1}, LG4/g;->q1(LG4/g;)LG4/h;

    move-result-object p1

    iget-object p2, p0, LG4/g$c;->a:LG4/g;

    invoke-interface {p1, p2}, LG4/h;->a(LG4/g;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LG4/g$c;->a:LG4/g;

    invoke-static {v0}, LG4/g;->r1(LG4/g;)V

    iget-object v0, p0, LG4/g$c;->a:LG4/g;

    invoke-static {v0}, LG4/g;->q1(LG4/g;)LG4/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG4/g$c;->a:LG4/g;

    invoke-static {v0}, LG4/g;->q1(LG4/g;)LG4/h;

    move-result-object v0

    iget-object v1, p0, LG4/g$c;->a:LG4/g;

    invoke-interface {v0, v1}, LG4/h;->a(LG4/g;)V

    :cond_0
    return-void
.end method
