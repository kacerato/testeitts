.class public Lh4/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/String;",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lh4/f;


# direct methods
.method public constructor <init>(Lh4/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh4/f$a;->b:Lh4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lh4/f$a;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    move-result-object p1

    return-object p1
.end method
