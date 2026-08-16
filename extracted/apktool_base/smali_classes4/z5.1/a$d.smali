.class public Lz5/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz5/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz5/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz5/a;


# direct methods
.method public constructor <init>(Lz5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lz5/a$d;->a:Lz5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo4/f;
    .locals 1

    iget-object v0, p0, Lz5/a$d;->a:Lz5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O()Lo4/f;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lz5/a$d;->a:Lz5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v0

    return v0
.end method
