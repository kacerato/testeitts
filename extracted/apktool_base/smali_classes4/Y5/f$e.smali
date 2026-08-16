.class public LY5/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY5/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY5/f;


# direct methods
.method public constructor <init>(LY5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LY5/f$e;->a:LY5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "anchor"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/a$e;->Right:Lr4/a$e;

    invoke-static {p2, v0, p1}, LX5/b;->Q1(Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
