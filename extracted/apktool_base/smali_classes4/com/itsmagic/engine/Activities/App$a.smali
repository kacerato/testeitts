.class public Lcom/itsmagic/engine/Activities/App$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/App;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/App;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/App$a;->a:Lcom/itsmagic/engine/Activities/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/App$a;->a:Lcom/itsmagic/engine/Activities/App;

    return-object v0
.end method
