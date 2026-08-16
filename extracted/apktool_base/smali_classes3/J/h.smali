.class public interface abstract LJ/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:LJ/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ/h$a;

    invoke-direct {v0}, LJ/h$a;-><init>()V

    sput-object v0, LJ/h;->a:LJ/h;

    new-instance v0, LJ/j$a;

    invoke-direct {v0}, LJ/j$a;-><init>()V

    invoke-virtual {v0}, LJ/j$a;->c()LJ/j;

    move-result-object v0

    sput-object v0, LJ/h;->b:LJ/h;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
