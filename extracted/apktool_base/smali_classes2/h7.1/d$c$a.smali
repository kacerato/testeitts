.class public Lh7/d$c$a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/d$c;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lh7/d$c;


# direct methods
.method public constructor <init>(Lh7/d$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh7/d$c$a;->b:Lh7/d$c;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, Lh7/d$c$a$a;

    invoke-direct {v0, p0}, Lh7/d$c$a$a;-><init>(Lh7/d$c$a;)V

    const v1, 0x7f0701b4

    const-string v2, "New"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lh7/d$c$a$b;

    invoke-direct {v0, p0}, Lh7/d$c$a$b;-><init>(Lh7/d$c$a;)V

    const v1, 0x7f070163

    const-string v2, "Import files"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lh7/d$c$a$c;

    invoke-direct {v0, p0}, Lh7/d$c$a$c;-><init>(Lh7/d$c$a;)V

    const-string v2, "Toggle view mode"

    invoke-direct {p1, v1, v2, v0}, Ldd/b;-><init>(ILjava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
