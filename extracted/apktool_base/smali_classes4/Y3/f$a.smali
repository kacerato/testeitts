.class public LY3/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Settings/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY3/f;->y(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY3/f;


# direct methods
.method public constructor <init>(LY3/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LY3/f$a;->a:LY3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LY3/f$a;->a:LY3/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;->A()V

    return-void
.end method
