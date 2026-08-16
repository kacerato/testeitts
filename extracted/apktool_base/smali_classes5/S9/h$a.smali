.class public LS9/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS9/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LS9/h;


# direct methods
.method public constructor <init>(LS9/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LS9/h$a;->a:LS9/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LW9/c;LW9/c;Ltc/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "controllerRect",
            "touch"
        }
    .end annotation

    invoke-static {p3, p2, p1}, LV9/m;->d(Ltc/h;LW9/c;LW9/c;)Z

    move-result p1

    return p1
.end method

.method public b(Ltc/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    iget-object v0, p0, LS9/h$a;->a:LS9/h;

    invoke-static {v0, p1}, LS9/h;->a(LS9/h;Ltc/h;)V

    return-void
.end method
