.class public La8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La8/b$a;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public c:La8/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, La8/b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method

.method public b()La8/b$a;
    .locals 1

    iget-object v0, p0, La8/b;->c:La8/b$a;

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, La8/b;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    return-void
.end method

.method public d(La8/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedType"
        }
    .end annotation

    iput-object p1, p0, La8/b;->c:La8/b$a;

    return-void
.end method
