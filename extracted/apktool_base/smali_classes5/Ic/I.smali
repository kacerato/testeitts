.class public LIc/I;
.super LLb/c;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    invoke-direct {p0}, LLb/c;-><init>()V

    iput-object p1, p0, LIc/I;->a:Ljava/lang/String;

    return-void
.end method
