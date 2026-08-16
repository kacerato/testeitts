.class public Lp5/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/c;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp5/c;


# direct methods
.method public constructor <init>(Lp5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp5/c$e;->a:Lp5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lp5/c$e;->a:Lp5/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
