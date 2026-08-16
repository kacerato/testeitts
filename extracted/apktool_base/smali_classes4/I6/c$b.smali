.class public LI6/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI6/c;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI6/c;


# direct methods
.method public constructor <init>(LI6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LI6/c$b;->a:LI6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeForLine(IZ)Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "isLatest"
        }
    .end annotation

    sget-object p1, Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;->None:Lorg/blacksquircle/ui/editorkit/utils/RequestLineTips$Type;

    return-object p1
.end method

.method public showLineTips(IIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "line",
            "x",
            "y",
            "isLatest"
        }
    .end annotation

    return-void
.end method
