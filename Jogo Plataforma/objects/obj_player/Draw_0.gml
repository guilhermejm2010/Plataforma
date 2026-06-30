/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();

if (jumps >= 2)
{
if (effect_time > 0)
{
    var tam = effect_time * 0.8;

    draw_circle(x - 6, y + 70, tam, false);
    draw_circle(x + 6, y + 70, tam, false);
	draw_circle(x - 1, y + 65, tam, false);
    draw_circle(x + 1, y + 65, tam, false);
}
}