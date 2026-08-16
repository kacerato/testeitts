.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->F1(Lr6/f;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Lr6/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$orderedProfiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$d;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lr6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "stack"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$d;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "s",
            "stack"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lr6/f;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a$d;->a(Ljava/lang/String;Lr6/f;)V

    return-void
.end method
