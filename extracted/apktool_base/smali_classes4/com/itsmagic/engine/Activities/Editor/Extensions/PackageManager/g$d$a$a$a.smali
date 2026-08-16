.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$a;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "download"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;->k()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;->Finished:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o$b;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "download"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$d$a$a$a;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)Z

    move-result p1

    return p1
.end method
