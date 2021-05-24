#import "LevelOrderTraversal.h"

typedef enum {
    sonLeft, sonRight
} Node;

NSUInteger levelTreeResult(NSArray *tree, NSMutableArray *levelOrderedData, NSUInteger counter, NSUInteger item);


NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    
    NSMutableArray *arrayLevelTree = [NSMutableArray new];
    
    levelTreeResult(tree, arrayLevelTree, 0, 0);
    
    return arrayLevelTree;
}




NSUInteger levelTreeResult(NSArray *tree, NSMutableArray *levelOrderedData, NSUInteger level, NSUInteger item) {
    
    NSUInteger result = item;
    NSMutableArray *mutArray = [NSMutableArray new];
    
    for (Node nodeType = 0; nodeType <= sonRight && result < tree.count; ++nodeType) {
        
        NSObject *node = tree[result++];
        
        if ([node isKindOfClass:NSNumber.class]) {
            
            if (levelOrderedData.count == level) {
                
                [levelOrderedData addObject:mutArray];
            }
            
            [levelOrderedData[level] addObject:node];
            
            result = levelTreeResult(tree, levelOrderedData, level+1, result);
        }
    }
    return result;
}

