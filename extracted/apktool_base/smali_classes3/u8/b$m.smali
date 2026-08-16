.class public Lu8/b$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu8/b$v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lu8/b$m;->a:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popup",
            "area"
        }
    .end annotation

    iget-object p2, p0, Lu8/b$m;->a:Lu8/b;

    invoke-static {p2, p1}, Lu8/b;->b(Lu8/b;LZ6/g;)LZ6/g;

    iget-object p1, p0, Lu8/b$m;->a:Lu8/b;

    invoke-static {p1}, Lu8/b;->c(Lu8/b;)V

    return-void
.end method
