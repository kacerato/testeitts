.class public Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/u$b$a$a;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
