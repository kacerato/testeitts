.class public Ld7/a$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$m;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$m;


# direct methods
.method public constructor <init>(Ld7/a$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$m$a;->a:Ld7/a$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->isTemplate:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
