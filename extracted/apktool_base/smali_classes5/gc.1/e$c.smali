.class public Lgc/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/e$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgc/e;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgc/e;


# direct methods
.method public constructor <init>(Lgc/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lgc/e$c;->a:Lgc/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgc/a;Lgc/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "condition",
            "indexer"
        }
    .end annotation

    iget-object p1, p1, Lgc/a;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
