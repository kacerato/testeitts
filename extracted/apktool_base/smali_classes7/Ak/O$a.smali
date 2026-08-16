.class public LAk/O$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAk/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LAk/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAk/O$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs a([LAk/p;)LAk/O$a;
    .locals 1

    iget-object v0, p0, LAk/O$a;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b()LAk/O;
    .locals 2

    new-instance v0, LAk/O;

    iget-object v1, p0, LAk/O$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, LAk/O;-><init>(Ljava/util/List;)V

    return-object v0
.end method
