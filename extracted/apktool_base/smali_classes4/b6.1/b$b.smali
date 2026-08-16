.class public Lb6/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb6/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb6/b$b$a;

    invoke-direct {v0, p0}, Lb6/b$b$a;-><init>(Lb6/b$b;)V

    iput-object v0, p0, Lb6/b$b;->a:Lb6/b$a;

    return-void
.end method


# virtual methods
.method public a(Lb6/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lb6/b$b;->a:Lb6/b$a;

    return-void
.end method
