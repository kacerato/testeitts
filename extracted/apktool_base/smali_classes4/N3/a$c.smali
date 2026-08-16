.class public LN3/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN3/a;->t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

.field public final synthetic b:LN3/a;


# direct methods
.method public constructor <init>(LN3/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN3/a$c;->b:LN3/a;

    iput-object p2, p0, LN3/a$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LN3/a$c;->b:LN3/a;

    iget-object v1, p0, LN3/a$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;

    invoke-static {v0, v1}, LN3/a;->q1(LN3/a;Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;)V

    return-void
.end method
