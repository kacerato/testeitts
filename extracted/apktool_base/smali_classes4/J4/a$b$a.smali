.class public LJ4/a$b$a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ4/a$b;->onLongClick(Landroid/view/View;)Z
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
.field public final synthetic b:LJ4/a$b;


# direct methods
.method public constructor <init>(LJ4/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LJ4/a$b$a;->b:LJ4/a$b;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, LJ4/a$b$a$a;

    invoke-direct {v0, p0}, LJ4/a$b$a$a;-><init>(LJ4/a$b$a;)V

    const-string v1, "Copy line"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
