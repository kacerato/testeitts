.class public LM9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LM9/g;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "LM9/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Class;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM9/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(LM9/g;LM9/b;Ljava/lang/Class;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "listener",
            "listenerClass",
            "ownerList",
            "indexInOwnerList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LM9/g;",
            "LM9/b;",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "LM9/h;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM9/h;->a:LM9/g;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LM9/h;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, LM9/h;->c:Ljava/lang/Class;

    iput-object p4, p0, LM9/h;->d:Ljava/util/List;

    iput p5, p0, LM9/h;->e:I

    return-void
.end method
