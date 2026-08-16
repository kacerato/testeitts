.class public interface abstract LH/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LH/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:LH/a$c;

.field public static final b:LH/a$c;

.field public static final c:LH/a$c;

.field public static final d:LH/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LH/a$c$a;

    invoke-direct {v0}, LH/a$c$a;-><init>()V

    sput-object v0, LH/a$c;->a:LH/a$c;

    new-instance v0, LH/a$c$b;

    invoke-direct {v0}, LH/a$c$b;-><init>()V

    sput-object v0, LH/a$c;->b:LH/a$c;

    new-instance v1, LH/a$c$c;

    invoke-direct {v1}, LH/a$c$c;-><init>()V

    sput-object v1, LH/a$c;->c:LH/a$c;

    sput-object v0, LH/a$c;->d:LH/a$c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
