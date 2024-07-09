def convert_size(size)
    # 基準尺寸
    base_sizes = {'s' => 36, 'm' => 38, 'l' => 40}
    
        # 使用正則表達式檢查無效輸入
        return nil unless size.match?(/\A(x*)[sml]\z/)
    
        # 提取基礎尺寸和修飾符
        base_size = size[-1]
        modifiers = size[0...-1]
    
        # 計算修正值
        num_modifiers = modifiers.length
        adjustment = base_size == 's' ? -2 * num_modifiers : base_size == 'l' ? 2 * num_modifiers : 0
    
        # 計算最終尺寸
        base_sizes[base_size] + adjustment
    end
    
puts convert_size('xs')  # 34
puts convert_size('s')   # 36
puts convert_size('m')   # 38
puts convert_size('l')   # 40
puts convert_size('xl')  # 42