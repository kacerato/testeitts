.class public Ld6/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/e;->w1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

.field public final synthetic b:Ld6/e;


# direct methods
.method public constructor <init>(Ld6/e;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ld6/e$e;->b:Ld6/e;

    iput-object p2, p0, Ld6/e$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, Ld6/e$e;->b:Ld6/e;

    iget-object v1, p0, Ld6/e$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-static {v0, p1, v1}, Ld6/e;->r1(Ld6/e;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method
