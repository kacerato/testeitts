.class public Ld7/a$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$w;->a:Ld7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;LM7/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p3, Ldd/b;

    new-instance v0, Ld7/a$w$a;

    invoke-direct {v0, p0}, Ld7/a$w$a;-><init>(Ld7/a$w;)V

    const-string v1, "Edit mode"

    invoke-direct {p3, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Ldd/b;

    new-instance v0, Ld7/a$w$b;

    invoke-direct {v0, p0}, Ld7/a$w$b;-><init>(Ld7/a$w;)V

    const-string v1, "Preview"

    invoke-direct {p3, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p3, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, p3, p2}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
