//
//  stageViewControlleriPad.m
//  Missing
//
//  Created by David Paige on 9/6/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import "stageViewControlleriPad.h"

@implementation stageViewControlleriPad
@synthesize subLayerCount, arrayIndex, sizeScale, textSize, stringOfText;

-(void)makeStringArray{
    NSString *a = @"hockey mask.png";
    NSString *b = @"vampire.png";
    NSString *c = @"frankenstein.png";
    NSString *d = @"mummy.png";
    NSString *e = @"ghoul.png";
    NSString *f = @"bath salts.png";
    NSString *g = @"ju-on.png";
    NSString *h = @"creature.png";
    NSString *i = @"wolfman.png";
    NSString *j = @"bat.png";
    NSString *k = @"black cat.png";
    NSString *l = @"kraken.png";
    NSString *m = @"shark.png";
    NSString *n = @"jelly fish.png";
    NSString *o = @"milk.png";
    NSString *p = @"chocolate milk.png";
    NSString *q = @"orange juice.png";
    NSString *r = @"soda can.png";
    NSString *s = @"water bottle.png";
    NSString *t = @"ramune.png";
    NSString *u = @"ramen.png";
    NSString *v = @"sawblade.png";
    NSString *w = @"bloody knife.png";
    NSString *x = @"spiked bat.png";
    NSString *y = @"bloody hatchet.png";
    NSString *z = @"chainsaw.png";
    NSString *aa = @"bloody chainsaw.png";
    NSString *bb = @"freddy glove.png";
    NSString *cc = @"giant lizard.png";
    NSString *dd = @"moth monster.png";
    NSString *ee = @"fuujin.png";
    NSString *ff = @"raijin.png";
    NSString *gg = @"neko.png";
    NSString *hh = @"bean dog.png";
    NSString *ii = @"gotchi.png";
    NSString *jj = @"scrap book.png";
    NSString *kk = @"glue gun.png";
    NSString *ll = @"glue.png";
    NSString *mm = @"easel.png";
    NSString *nn = @"paint brush.png";
    NSString *oo = @"paint bucket.png";
    NSString *pp = @"buttons.png";
    NSString *qq = @"daruma.png";
    NSString *rr = @"ghostface.png";
    NSString *ss = @"damemask.png";
    NSString *tt = @"sackhead.png";
    NSString *uu = @"dollmask.png";
    NSString *vv = @"phibes.png";
    NSString *ww = @"fogface.png";
    NSString *xx = @"seal.png";
    NSString *yy = @"chihuahua.png";
    NSString *zz = @"pomeranian.png";
    NSString *aaa = @"siamese cat.png";
    NSString *bbb = @"donkey.png";
    NSString *ccc = @"giraffe.png";
    NSString *ddd = @"flamingo.png";
    NSString *eee = @"sandwich.png";
    NSString *fff = @"taco.png";
    NSString *ggg = @"carrot.png";
    NSString *hhh = @"onion.png";
    NSString *iii = @"olives.png";
    NSString *jjj = @"coconut.png";
    NSString *kkk = @"open coconut.png";
    NSString *lll = @"necronomicon.png";
    NSString *mmm = @"spellbook.png";
    NSString *nnn = @"cauldron.png";
    NSString *ooo = @"poison.png";
    NSString *ppp = @"13.png";
    NSString *qqq = @"gothic cross1.png";
    NSString *rrr = @"gothic cross2.png";
    NSString *sss = @"5 yen.png";
    NSString *ttt = @"omamori.png";
    NSString *uuu = @"ofuda.png";
    NSString *vvv = @"fan.png";
    NSString *www = @"parasol.png";
    NSString *xxx = @"school uniform.png";
    NSString *yyy = @"katamari.png";
    NSString *zzz = @"beads.png";
    NSString *aaaa = @"yarn.png";
    NSString *bbbb = @"knitting needles.png";
    NSString *cccc = @"crochet.png";
    NSString *dddd = @"needle and thread.png";
    NSString *eeee = @"needle.png";
    NSString *ffff = @"spool.png";
    NSString *gggg = @"well ghost.png";
    NSString *hhhh = @"monster1.png";
    NSString *iiii = @"monster2.png";
    NSString *jjjj = @"monster3.png";
    NSString *kkkk = @"witch.png";
    NSString *llll = @"nosferatu.png";
    NSString *mmmm = @"zombie.png";
    NSString *nnnn = @"ostrich.png";
    NSString *oooo = @"gecko.png";
    NSString *pppp = @"pill bug.png";
    NSString *qqqq = @"crane fly.png";
    NSString *rrrr = @"butterfly.png";
    NSString *ssss = @"nessy.png";
    NSString *tttt = @"green bean.png";
    NSString *uuuu = @"pocky.png";
    NSString *vvvv = @"unwrapped candy.png";
    NSString *wwww = @"blood pool.png";
    NSString *xxxx = @"gravestone.png";
    NSString *yyyy = @"pale.png";
    NSString *zzzz = @"blood.png";
    NSString *aaaaa = @"ring tv.png";
    
    stringArray = [[NSArray alloc] initWithObjects:a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa,bbbb,cccc,dddd,eeee,ffff,gggg,hhhh,iiii,jjjj,kkkk,llll,mmmm,nnnn,oooo,pppp,qqqq,rrrr,ssss,tttt,uuuu,vvvv,wwww,xxxx,yyyy,zzzz,aaaaa,nil];
}


- (void)addGestureRecognizerToView:(UIView *)view{
    
    UIPanGestureRecognizer *drag = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(dragAction:)];
    [view addGestureRecognizer:drag];
}

- (void)viewDidLoad
{
    
    [self makeStringArray];
        
    dimensions = CGRectMake(289, 132, 150, 150);
    
    self.view.frame = CGRectMake(20, 154, 728, 405);
    
    borderView = [[UIView alloc] initWithFrame:dimensions];
    borderView.bounds = dimensions;
    borderView.frame = dimensions;
        
    [self.view addSubview:borderView];
    
    borderView.backgroundColor = [UIColor colorWithHue:.5988 saturation:.39 brightness:.95 alpha:1];
    borderView.userInteractionEnabled = YES;
    
    pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinch:)];
    [self.view addGestureRecognizer:pinch];
    
    sub = [[UIView alloc] initWithFrame:CGRectMake(294, 137, 140, 140)];
    [borderView addSubview:sub];
    sub.backgroundColor = [UIColor whiteColor];
    
    self.view.multipleTouchEnabled = YES;
    subLayerCount = 0;
    pasteBoard = [UIPasteboard generalPasteboard];

    CALayer *maskingLayer = [CALayer layer];
    maskingLayer.contents =(id)[[UIImage imageNamed:@"maskImage.png"] CGImage];
    maskingLayer.frame = borderView.frame;
    self.view.layer.mask = maskingLayer;
 
    textSize = 24;
    
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeColor:) name:@"backButtonPushed" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(saveStage:) name:@"saveStage" object:nil];
    
    alphaToZero = 1;
}

-(void)pinch:(id)sender{
    if (subLayerCount == 0) {
        if (pinch.scale < 0.6 && pinch.state == UIGestureRecognizerStateChanged) {
            borderView.transform = CGAffineTransformMakeScale(0.6, 0.6);
            self.view.layer.mask.transform = CATransform3DMakeScale(0.6,0.6, 0);
        }
        if (pinch.scale > 0.6 && pinch.scale < 0.8) {
            borderView.transform = CGAffineTransformMakeScale(0.8, 0.8);
            self.view.layer.mask.transform = CATransform3DMakeScale(0.8, 0.8, 0);
        }
        if (pinch.scale > 0.8 && pinch.scale < 1.2) {
            borderView.transform = CGAffineTransformMakeScale(1, 1);
            self.view.layer.mask.transform = CATransform3DMakeScale(1, 1, 0);
        }
        if (pinch.scale > 1.2 && pinch.scale < 1.4) {
            borderView.transform = CGAffineTransformMakeScale(1.4, 1.4);
            self.view.layer.mask.transform = CATransform3DMakeScale(1.4, 1.4, 0);
        }
        if (pinch.scale > 1.4 && pinch.scale < 1.6) {
            borderView.transform = CGAffineTransformMakeScale(1.6, 1.6);
            self.view.layer.mask.transform = CATransform3DMakeScale(1.6, 1.6, 0);
        }
        if (pinch.scale > 1.6 && pinch.scale < 1.8) {
            borderView.transform = CGAffineTransformMakeScale(1.8, 1.8);
            self.view.layer.mask.transform = CATransform3DMakeScale(1.8, 1.8, 0);
        }
        if (pinch.scale > 1.8 && pinch.scale < 2) {
            borderView.transform = CGAffineTransformMakeScale(2, 2);
            self.view.layer.mask.transform = CATransform3DMakeScale(2, 2, 0);
        }
        if (pinch.scale > 2 && pinch.scale < 2.3) {
            borderView.transform = CGAffineTransformMakeScale(2.3, 2);
            self.view.layer.mask.transform = CATransform3DMakeScale(2.3, 2, 0);
        }
        if (pinch.scale > 2.5) {
            borderView.transform = CGAffineTransformMakeScale(2.5, 2);
            self.view.layer.mask.transform = CATransform3DMakeScale(2.5, 2, 0);
        }

    }
}

-(void)copButton
{
    
    borderView.backgroundColor = color;
    CGSize imageSize = borderView.frame.size;
    sub.alpha = alphaToZero;
    borderView.alpha = alphaToZero;
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextTranslateCTM(context,-borderView.frame.origin.x, -borderView.frame.origin.y);
    CGContextConcatCTM(context, sub.transform);
    
    [self.view.layer renderInContext:context];
    UIImage *__weak image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    sub.alpha = 1;
    borderView.alpha = 1;
    //pasteboard.image = image;
    //depricated in iOS6
    NSData *imgData = UIImagePNGRepresentation(image);
    [pasteBoard setData:imgData forPasteboardType:[UIPasteboardTypeListImage objectAtIndex:0]];

    borderView.backgroundColor = [UIColor colorWithHue:.5988 saturation:.39 brightness:.95 alpha:1];
}

-(void)quickCopyEmoji
{
     
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:[stringArray objectAtIndex:arrayIndex] ofType:nil]];
    CGSize size = image.size;
    float var = 8 / sizeScale;
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake((size.width * sizeScale) + var, (size.height * sizeScale) + var), NO, 0);
    [image drawInRect:CGRectMake(var / 2,var / 2, size.width*sizeScale, size.height*sizeScale)];
    UIImage *__weak image2 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();  
    
    //pasteboard.image = image2;
    //depricated in iOS6
    NSData *imgData = UIImagePNGRepresentation(image2);
    [pasteBoard setData:imgData forPasteboardType:[UIPasteboardTypeListImage objectAtIndex:0]];
}

-(void)undoButton{
    if (subLayerCount !=0) 
    {
        [[self.view viewWithTag:subLayerCount] removeFromSuperview];
        --subLayerCount;
    }
}

-(void)trashButton
{
    while (subLayerCount >> 0) {
        [[self.view viewWithTag:subLayerCount] removeFromSuperview];
        if (subLayerCount !=0) 
        {
            --subLayerCount;
        }
    }
}

-(void)changeColor:(NSNotification *)notification{
    
    NSNumber *rValue = [[notification userInfo] objectForKey:@"1"];
    float r = rValue.floatValue;
    NSNumber *gValue = [[notification userInfo] objectForKey:@"2"];
    float g = gValue.floatValue;
    NSNumber *bValue = [[notification userInfo] objectForKey:@"3"];
    float b = bValue.floatValue;
    NSNumber *a = [[notification userInfo] objectForKey:@"4"];
    alphaToZero = a.boolValue;
    
    color = [UIColor colorWithRed:r green:g blue:b alpha:1];
    sub.backgroundColor = color;
}

-(void)saveStage:(NSNotification *)notification{
    
    NSString *stringA = [[notification userInfo] objectForKey:@"1"];
    
    if (color == nil) {
        borderView.backgroundColor = [UIColor whiteColor];
    }else{
        borderView.backgroundColor = color;
    }
    CGSize imageSize = borderView.frame.size;
    sub.alpha = alphaToZero;
    borderView.alpha = alphaToZero;
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextTranslateCTM(context,-borderView.frame.origin.x, -borderView.frame.origin.y);
    CGContextConcatCTM(context, sub.transform);
    
    [self.view.layer renderInContext:context];
    UIImage *__weak image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    sub.alpha = 1;
    borderView.alpha = 1;
    [UIPasteboard pasteboardWithName:stringA create:NO].image = image;
    borderView.backgroundColor = [UIColor colorWithHue:.5988 saturation:.39 brightness:.95 alpha:1];
}

-(void)addEmoji
{
    if(subLayerCount <= 12)
    {
        subLayerCount++;
        
        UIImage * image = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:[stringArray objectAtIndex:arrayIndex] ofType:nil]];
        
        UIImageView * newImageView = [[UIImageView alloc] initWithImage:image];
        
        [self.view addSubview:newImageView];
        
        newImageView.userInteractionEnabled = YES;
        
        newImageView.center =sub.center;
        newImageView.tag = subLayerCount;
        
        newImageView.transform = CGAffineTransformMakeScale(sizeScale * 1.3,sizeScale * 1.3);
        
        [UIView animateWithDuration:.3 animations:^{
            newImageView.transform = CGAffineTransformMakeScale(sizeScale, sizeScale);
        } completion:^(BOOL finished) {}];
        
        
        [self addGestureRecognizerToView:newImageView];
    }
    
}

-(void)addText
{
    if (subLayerCount <=12) {
        if (stringOfText.length != 0) {
            subLayerCount ++;
            uint x = 30;
            if (stringOfText.length >= 2) {
                x = 40;
            }
            if (stringOfText.length >= 3) {
                x = 50;
            }
            if (stringOfText.length >= 4) {
                x = 60;
            }
            if (stringOfText.length >= 5) {
                x = 70;
            }
            if (stringOfText.length >= 6) {
                x = 80;
            }
            if (stringOfText.length >= 7) {
                x = 95;
            }
            if (stringOfText.length >= 8) {
                x = 110;
            }
            if (stringOfText.length >= 8) {
                x = 120;
            }
            if (stringOfText.length >= 9) {
                x = 130;
            }
            if (stringOfText.length >= 10) {
                x = 150;
            }
            if (stringOfText.length >= 11) {
                x = 170;
            }
            if (stringOfText.length >= 12) {
                x = 180;
            }
            if (stringOfText.length >= 13) {
                x = 200;
            }
            if (stringOfText.length >= 14) {
                x = 220;
            }
            if (stringOfText.length >= 15) {
                x = 240;
            }
            if (stringOfText.length >= 16) {
                x = 260;
            }
            if (stringOfText.length == 17) {
                x = 280;
            }
            
            UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, x, 25)];
            textLabel.adjustsFontSizeToFitWidth = YES;
            textLabel.numberOfLines = 1;
            if (textSize > 17) {
                textLabel.frame = CGRectMake(0, 0, x, 40);
            }
            if (textSize > 20) {
                textLabel.frame = CGRectMake(0, 0, x, 50);
            }
            if (textSize > 20 && stringOfText.length >= 12) {
                textLabel.frame = CGRectMake(0, 0, x, 60);
            }
            if (textSize > 20 && stringOfText.length >= 16) {
                textLabel.frame = CGRectMake(0, 0, x, 70);
            }


            textLabel.center = sub.center;
            textLabel.tag = subLayerCount;
            textLabel.textAlignment = 1;
            textLabel.font = [UIFont fontWithName:@"AppleColorEmoji" size:textSize];
            textLabel.text = stringOfText;
            stringOfText = nil;
            textLabel.userInteractionEnabled = YES;
            textLabel.backgroundColor = [UIColor clearColor];
            
            [self.view addSubview:textLabel];
            
            [self addGestureRecognizerToView:textLabel];
            
        }
        
    }
}

-(void)dragAction:(UIPanGestureRecognizer *)drag{
    drag.maximumNumberOfTouches = 1;
    UIView *dragView = [drag view];
    
    if ([drag state]== UIGestureRecognizerStateBegan || [drag state] == UIGestureRecognizerStateChanged) {
        CGPoint translate = [drag translationInView:[dragView superview]];
        
        
        if (drag.view.center.x > borderView.frame.origin.x + borderView.frame.size.width || drag.view.center.x < borderView.frame.origin.x
            || drag.view.center.y > borderView.frame.size.height + borderView.frame.origin.y || drag.view.center.y < borderView.frame.origin.y)
        {
            /*do nothing*/
        }else{
            [drag.view setCenter:CGPointMake(drag.view.center.x + translate.x, drag.view.center.y + translate.y)];}
        [drag setTranslation:CGPointZero inView:[drag.view superview]];
    }
    
    if (drag.state == UIGestureRecognizerStateEnded && drag.view.center.x > borderView.frame.origin.x + borderView.frame.size.width)
    {
        [drag.view setCenter:CGPointMake(borderView.frame.origin.x + borderView.frame.size.width -15, drag.view.center.y)];
    }
    if (drag.state == UIGestureRecognizerStateEnded && drag.view.center.x < borderView.frame.origin.x)
    {
        [drag.view setCenter:CGPointMake(borderView.frame.origin.x +15, drag.view.center.y)];
    }
    if (drag.state == UIGestureRecognizerStateEnded && drag.view.center.y > borderView.frame.size.height + borderView.frame.origin.y)
    {
        [drag.view setCenter:CGPointMake(drag.view.center.x, borderView.frame.size.height + borderView.frame.origin.y -15)];
    }
    if (drag.state == UIGestureRecognizerStateEnded && drag.view.center.y < borderView.frame.origin.y)
    {
        [drag.view setCenter:CGPointMake(drag.view.center.x, borderView.frame.origin.y +15)];
    }
    
}

- (void)viewDidUnload
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
    self.view = nil;
    borderView = nil;
    sub = nil;
    [super viewDidUnload];
}

@end
